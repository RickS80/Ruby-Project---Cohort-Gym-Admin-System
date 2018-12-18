require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bookedclass.rb' )
require_relative( '../models/gymclass.rb' )
require_relative( '../models/member.rb' )
require_relative( '../models/instructor.rb' )
also_reload( '../models/*' )

get '/instructors' do
  @instructors = Instructor.all()
  erb ( :"instructors/index" )
end

get '/instructors/new' do
  erb(:"instructors/new")
end

get '/instructors/:id' do
  @instructor = Instructor.find(params['id'].to_i)
  erb(:"instructors/show")
end

post '/instructors' do # create
  @instructor = Instructor.new( params )
  @instructor.save()
  redirect to "/instructors"
end

get '/instructors/:id/edit' do
  @member = Instructor.find(params['id'])
  erb(:"members/edit")
end

post '/instructors/:id' do
  instructor = Member.new(params)
  instructor.update
  redirect to "/instructors/#{params['id']}"
end


post '/instructors/:id/delete' do
  instructor = Instructor.find(params['id'])
  instructor.delete
  redirect to '/instructors'
end
