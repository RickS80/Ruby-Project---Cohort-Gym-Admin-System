require_relative('../db/sql_runner')
require_relative('member')
require_relative('gymclass')
require( 'pry-byebug' )

class Instructor

attr_reader :id
attr_accessor :instructor_name, :mantra

def initialize (options)
  @id = options['id'].to_i if options['id']
  @instructor_name = options['instructor_name']
  @mantra = options['mantra']
end


def save()
  sql = "INSERT INTO instructors
  (instructor_name, mantra)
  VALUES
  ($1, $2)
  RETURNING id"
  values = [@instructor_name, @mantra]
  results = SqlRunner.run(sql, values)
  @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE instructors SET
    (instructor_name, mantra)
    = ($1, $2)
    WHERE id = $3"
    values = [@instructor_name, @mantra, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM instructors"
    results = SqlRunner.run( sql )
    return results.map { |instructor| Instructor.new( instructor ) }
  end

  def self.find( id )
    sql = "SELECT * FROM instructors
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Instructor.new( results.first )
  end

  def self.delete_all()
    sql = "DELETE FROM instructors"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM instructors
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

end
