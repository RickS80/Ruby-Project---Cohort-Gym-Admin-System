require_relative('../db/sql_runner')
require_relative('member')

class GymClass
  attr_reader :id
  attr_accessor :gymclass_name, :instructor, :capacity, :start_time, :end_time

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @gymclass_name = options['gymclass_name']
    @instructor = options['instructor']
    @capacity = options['capacity'].to_i
    @start_time = options['start_time']
    @end_time = options['end_time']
  end

  def save()
    sql = "INSERT INTO gymclasses
    (gymclass_name, instructor, capacity, start_time, end_time)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@gymclass_name, @instructor, @capacity, @start_time, @end_time]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM gymclasses"
    results = SqlRunner.run( sql )
    return results.map { |gymclass| GymClass.new( gymclass ) }
  end

  def self.find( id )
    sql = "SELECT * FROM gymclasses
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return GymClass.new( results.first )
  end


  def self.delete_all()
    sql = "DELETE FROM gymclasses"
    SqlRunner.run( sql )
  end

  def self.delete(id)
    sql = "DELETE FROM gymclasses
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end

  def members()
    sql = "SELECT members.*
    FROM members
    INNER JOIN bookedclasses
    ON bookedclasses.member_id = members.id
    WHERE gymclass_id = $1"
    values = [@id]
    user_data = SqlRunner.run(sql, values)
    user_data.map {|member| Member.new(member)}
  end

  


end
