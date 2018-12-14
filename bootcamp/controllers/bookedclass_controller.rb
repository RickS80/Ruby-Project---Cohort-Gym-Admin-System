require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bookedclass.rb' )
require_relative( '../models/gymclass.rb' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )


get '/bookedclasses' do
  @bookedclasses = BookedClass.all()
  @members = Member.all()
  @gymclasses = GymClass.all()
  erb ( :"bookedclasses/index" )
end
