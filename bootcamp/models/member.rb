require_relative('../db/sql_runner')

class Member

  attr_reader :id
  attr_accessor :name, :age, :gender, :membership_category

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @age = options['age'].to_i
    @gender = options['gender']
    @membership_category = options['membership_category']
  end

  def save()
    sql = "INSERT INTO members
    (name, age, gender, membership_category)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id"
    values = [@name, @age, @gender, @membership_category]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM members"
    results = SqlRunner.run( sql )
    return results.map { |member| Member.new( member ) }
  end

  def self.find( id )
    sql = "SELECT * FROM members
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Member.new( results.first )
  end


  def self.delete_all()
    sql = "DELETE FROM members"
    SqlRunner.run( sql )
  end

  def self.delete(id)
    sql = "DELETE FROM members
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end


end
