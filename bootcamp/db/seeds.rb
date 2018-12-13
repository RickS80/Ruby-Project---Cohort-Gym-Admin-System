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

gymclass2 = GymClass.new({
  "gymclass_name" => "Spin",
  "instructor" => "Gary",
  "capacity" => 5,
  "start_time" => "10:30",
  "end_time" => "11:30"
  })

gymclass3 = GymClass.new({
  "gymclass_name" => "Individual",
  "instructor" => "Gary",
  "capacity" => 1,
  "start_time" => "10:30",
  "end_time" => "11:30"
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

bookedclass1.save()
bookedclass2.save()
bookedclass3.save()

p member1.gymclasses()
