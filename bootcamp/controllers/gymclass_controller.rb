require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bookedclass.rb' )
require_relative( '../models/gymclass.rb' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

get '/gymclasses' do
  @gymclasses = GymClass.all()
  erb ( :"gymclasses/index" )
end

get '/gymclasses/:id' do
  @gymclass = GymClass.find(params['id'].to_i)
  erb(:"gymclasses/show")
end
