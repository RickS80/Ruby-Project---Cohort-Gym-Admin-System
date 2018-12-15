require_relative('../db/sql_runner')
require_relative('gymclass')
require_relative('bookedclass')

class Member

  attr_reader :id
  attr_accessor :first_name, :last_name, :age, :gender, :membership_category

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @gender = options['gender']
    @membership_category = options['membership_category']
  end

  def save()
    sql = "INSERT INTO members
    (first_name, last_name, age, gender, membership_category)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@first_name, @last_name, @age, @gender, @membership_category]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE members SET
    (first_name, last_name, age, gender, membership_category)
    = ($1, $2, $3, $4, $5)
    WHERE id = $6"
    values = [@first_name, @last_name, @age, @gender, @membership_category, @id]
    SqlRunner.run(sql, values)
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

  def delete()
    sql = "DELETE FROM members
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def gymclasses()
    sql = "SELECT gymclasses.*
    FROM gymclasses
    INNER JOIN bookedclasses
    ON bookedclasses.gymclass_id = gymclasses.id
    WHERE member_id = $1"
    values = [@id]
    user_data = SqlRunner.run(sql, values)
    user_data.map {|gymclass| GymClass.new(gymclass)}
  end

  def name()
    [@first_name, @last_name].join(' ').squeeze(' ')
  end




end
