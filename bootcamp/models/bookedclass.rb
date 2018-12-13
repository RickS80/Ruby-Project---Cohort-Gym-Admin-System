require_relative('../db/sql_runner')

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

  def self.delete(id)
    sql = "DELETE FROM bookedclasses
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end


end
