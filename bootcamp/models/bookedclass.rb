require_relative('../db/sql_runner')
require_relative('member')
require_relative('gymclass')

class BookedClass

attr_reader :id, :member_id, :gymclass_id


  def initialize (options)
    @id = options['id'].to_i if options['id']
    @member_id = options['member_id'].to_i
    @gymclass_id = options['gymclass_id'].to_i
  end

  def save()
      sql = "INSERT INTO bookedclasses
      (member_id, gymclass_id)
      VALUES
      ($1, $2)
      RETURNING id"
      values = [@member_id, @gymclass_id]
      results = SqlRunner.run(sql, values)
      @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE bookedclasses SET
    (member_id, gymclass_id)
    = ($1, $2)
    WHERE id = $3"
    values = [@member_id, @gymclass_id, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM bookedclasses"
    results = SqlRunner.run( sql )
    return results.map { |bookedclass| BookedClass.new( bookedclass ) }
  end

  def self.find( id )
    sql = "SELECT * FROM bookedclasses
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return BookedClass.new( results.first )
  end

  def self.delete_all()
    sql = "DELETE FROM bookedclasses"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM bookedclasses
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def member_name
    Member.find(@member_id).name
  end

  def gym_class_name
    GymClass.find(@gymclass_id).gymclass_name
  end

  def gym_class_start_time
    GymClass.find(@gymclass_id).start_time
  end

  def self.attendees(gymclass_id )
    sql = "SELECT * FROM bookedclasses
    WHERE gymclass_id = $1"
    values = [gymclass_id]
    results = SqlRunner.run( sql, values )
    results.count
  end

  def self.attendees_hash(gymclass_id )
    sql = "SELECT * FROM bookedclasses
    WHERE gymclass_id = $1"
    values = [gymclass_id]
    results = SqlRunner.run( sql, values )
  end

  # def self.map_items(house_data)
  #   return house_data.map { |house| House.new(house) }
  # end

  def check_availability
    if GymClass.find(@gymclass_id).capacity - BookedClass.attendees(@gymclass_id) > 0
      return true
    else false
    end
  end

  def check_membership_tier
    if Member.find(@member_id).membership_category == "Premium"
      return true
    elsif Member.find(@member_id).membership_category == "Basic" && GymClass.find(@gymclass_id).member_tier == "Basic"
      return true
    else false
    end
  end

  def double_booking
    @gymclass.members.each do |member|
      if @newclass.member_name == member
        return true
      else false
    end 
  end

end
