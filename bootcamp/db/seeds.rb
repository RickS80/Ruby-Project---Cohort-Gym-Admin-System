require_relative('../models/member')
require_relative('../models/gymclass')
require_relative('../models/bookedclass')
require("pry-byebug")

BookedClass.delete_all
Member.delete_all
GymClass.delete_all

member1 = Member.new({
  "name" => "Rick Symington",
  "age" => 38,
  "gender" => "Male",
  "membership_category" => "Premium"
  })

member2 = Member.new({
  "name" => "Midori Symington",
  "age" => 38,
  "gender" => "Female",
  "membership_category" => "Basic"
  })

member3 = Member.new({
  "name" => "Granny",
  "age" => 100,
  "gender" => "Female",
  "membership_category" => "Basic"
  })

member1.save()
member2.save()
member3.save()

gymclass1 = GymClass.new({
  "gymclass_name" => "Bodypump",
  "instructor" => "Gary",
  "capacity" => 5,
  "start_time" => "2018-12-20 10:30:00",
  "end_time" => "2018-12-20 11:30:00"
  })

gymclass2 = GymClass.new({
  "gymclass_name" => "Spin",
  "instructor" => "Gary",
  "capacity" => 5,
  "start_time" => "2018-12-20 13:30:00",
  "end_time" => "2018-12-20 14:30:00"
  })

gymclass3 = GymClass.new({
  "gymclass_name" => "Individual",
  "instructor" => "Gary",
  "capacity" => 1,
  "start_time" => "2018-12-20 14:30:00",
  "end_time" => "2018-12-20 15:30:00"
  })

gymclass1.save()
gymclass2.save()
gymclass3.save()

bookedclass1 = BookedClass.new({
  "member_id" => member1.id,
  "gymclass_id" => gymclass1.id
  })

bookedclass2 = BookedClass.new({
  "member_id" => member1.id,
  "gymclass_id" => gymclass2.id
  })

bookedclass3 = BookedClass.new({
  "member_id" => member1.id,
  "gymclass_id" => gymclass3.id
  })

bookedclass4 = BookedClass.new({
  "member_id" => member2.id,
  "gymclass_id" => gymclass1.id
  })

bookedclass1.save()
bookedclass2.save()
bookedclass3.save()
bookedclass4.save()

# p member1.gymclasses()
# p gymclass1.members
