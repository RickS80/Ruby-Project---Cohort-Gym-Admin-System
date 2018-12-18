require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/bookedclass_controller')
require_relative('controllers/gymclass_controller')
require_relative('controllers/member_controller')
require_relative( './models/bookedclass.rb' )
require_relative( './models/gymclass.rb' )
require_relative( './models/member.rb' )
also_reload( './models/*' )


get '/' do
  @gymclasses = GymClass.all()
  @bookedclasses = BookedClass.all()
  @members = Member.all()
  erb( :index )
end
