require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bookedclass.rb' )
require_relative( '../models/gymclass.rb' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

get '/gymclasses' do
  @gymclasses = GymClass.all()
  @bookedclasses = BookedClass.all()
  @members = Member.all()
  # binding.pry
  erb ( :"gymclasses/index" )
end

get '/gymclasses/new' do
  erb(:"gymclasses/new")
end

get '/gymclasses/:id' do
  @gymclass = GymClass.find(params['id'].to_i)
  erb(:"gymclasses/show")
end

post '/gymclasses' do # create
  @gymclass = GymClass.new( params )
  @gymclass.save()
  redirect to '/gymclasses'
end

get '/gymclasses/:id/edit' do
  @gymclass = GymClass.find(params['id'])
  erb(:"gymclasses/edit")
end

post '/gymclasses/:id' do
  gym_class = GymClass.new(params)
  gym_class.update
  redirect to "/gymclasses/#{params['id']}"
end


post '/gymclasses/:id/delete' do
  gym_class = GymClass.find(params['id'])
  gym_class.delete
  redirect to '/gymclasses'
end
