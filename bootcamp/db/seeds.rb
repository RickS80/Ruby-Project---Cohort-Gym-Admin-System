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
  "gender" => "M",
  "membership_category" => "Premium"
  })

member1.save()

gymclass1 = GymClass.new({
  "gymclass_name" => "Bodypump",
  "instructor" => "Gary",
  "capacity" => 5,
  "start_time" => "10:30",
  "end_time" => "11:30"
  })

gymclass1.save()

bookedclass1 = BookedClass.new({
  "member_id" => member1.id,
  "gymclass_id" => gymclass1.id
  })

bookedclass1.save()
