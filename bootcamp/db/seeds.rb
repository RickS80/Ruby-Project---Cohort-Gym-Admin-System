require_relative('../models/member')
require_relative('../models/gymclass')
require_relative('../models/bookedclass')
require_relative('../models/instructor')
require("pry-byebug")

BookedClass.delete_all
Instructor.delete_all
Member.delete_all
GymClass.delete_all

member1 = Member.new({
  "first_name" => "Rick",
  "last_name" => "Symington",
  "age" => 38,
  "gender" => "Male",
  "membership_category" => "Premium",
  "picture_url" => "",
  "email_address" => "rick.symington@gmail.com",
  "tel_number" => "07714797952",
  "gdpr" => "Agree"
  })

member2 = Member.new({
  "first_name" => "Keith",
  "last_name" => "Allan",
  "age" => 4,
  "gender" => "Male",
  "membership_category" => "Premium",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member3 = Member.new({
  "first_name" => "Raul",
  "last_name" => "Ciobanu",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member4 = Member.new({
  "first_name" => "Michael",
  "last_name" => "Connor",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member5 = Member.new({
  "first_name" => "Slawomir",
  "last_name" => "Dyk",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member6 = Member.new({
  "first_name" => "Mohamed",
  "last_name" => "Eshaftri",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member7 = Member.new({
  "first_name" => "Gabriele",
  "last_name" => "Filigheddy",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member8 = Member.new({
  "first_name" => "Michael",
  "last_name" => "Irwin",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member9 = Member.new({
  "first_name" => "Nadja",
  "last_name" => "Kelly",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Premium",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member10 = Member.new({
  "first_name" => "Thomas",
  "last_name" => "Kendrick",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member11 = Member.new({
  "first_name" => "Jonathan",
  "last_name" => "Levi",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member12 = Member.new({
  "first_name" => "Kirsy",
  "last_name" => "Lees",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member13 = Member.new({
  "first_name" => "Mark",
  "last_name" => "Mackay",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member14 = Member.new({
  "first_name" => "Andrew",
  "last_name" => "Macleod",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member15 = Member.new({
  "first_name" => "Joe",
  "last_name" => "McColl",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member16 = Member.new({
  "first_name" => "Shabana",
  "last_name" => "Mirza",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Premium",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member17 = Member.new({
  "first_name" => "Jamie",
  "last_name" => "Reid",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member18 = Member.new({
  "first_name" => "Katharina",
  "last_name" => "Simon",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Premium",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member19 = Member.new({
  "first_name" => "Davide",
  "last_name" => "Venditti",
  "age" => 30,
  "gender" => "Male",
  "membership_category" => "Premium",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member20 = Member.new({
  "first_name" => "Lacey",
  "last_name" => "Walker",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member21 = Member.new({
  "first_name" => "Gerry",
  "last_name" => "Waterston",
  "age" => 30,
  "gender" => "Female",
  "membership_category" => "Basic",
  "picture_url" => "",
  "email_address" => "someone@codeclan.com",
  "tel_number" => "07771234567",
  "gdpr" => "Agree"
  })

member1.save()
member2.save()
member3.save()
member4.save()
member5.save()
member6.save()
member7.save()
member8.save()
member9.save()
member10.save()
member11.save()
member12.save()
member13.save()
member14.save()
member15.save()
member16.save()
member17.save()
member18.save()
member19.save()
member20.save()
member21.save()

instructor1 = Instructor.new({
  "instructor_name" => "Colin",
  "mantra" => "The best activities for your health are pumping and humping - Arnold Schwarzneggar "
})

instructor2 = Instructor.new({
  "instructor_name" => "Alex",
  "mantra" => "The more you sweat in training, the less you bleed in combat - Navy Seals "
})

instructor3 = Instructor.new({
  "instructor_name" => "Del",
  "mantra" => "Pain is temporary. Quitting lasts forever - Lance Armstrong "
})

instructor4 = Instructor.new({
  "instructor_name" => "Sian",
  "mantra" => "To be number one, you have to train like you’re number two - Maurice Green "
})

instructor1.save()
instructor2.save()
instructor3.save()
instructor4.save()

gymclass1 = GymClass.new({
  "gymclass_name" => "Bodypump",
  "instructor_id" => instructor1.id,
  "capacity" => 5,
  "class_date" => "2018-12-20",
  "schedule" => "1500-1600",
  "member_tier" => "Premium"
  })

gymclass2 = GymClass.new({
  "gymclass_name" => "Spin",
  "instructor_id" => instructor2.id,
  "capacity" => 5,
  "class_date" => "2018-12-20",
  "schedule" => "1000-1100",
  "member_tier" => "Premium"
  })

gymclass3 = GymClass.new({
  "gymclass_name" => "Individual",
  "instructor_id" => instructor3.id,
  "capacity" => 1,
  "class_date" => "2018-12-21",
  "schedule" => "1100-1200",
  "member_tier" => "Basic"
  })

gymclass4 = GymClass.new({
  "gymclass_name" => "Zumba",
  "instructor_id" => instructor4.id,
  "capacity" => 5,
  "class_date" => "2018-12-20",
  "schedule" => "0900-1000",
  "member_tier" => "Basic"
  })

gymclass5 = GymClass.new({
  "gymclass_name" => "Yoga",
  "instructor_id" => instructor1.id,
  "capacity" => 5,
  "class_date" => "2018-12-23",
  "schedule" => "1300-1400",
  "member_tier" => "Basic"
  })

gymclass6 = GymClass.new({
  "gymclass_name" => "Bodypump",
  "instructor_id" => instructor2.id,
  "capacity" => 5,
  "class_date" => "2018-12-20",
  "schedule" => "0900-1000",
  "member_tier" => "Basic"
  })

gymclass7 = GymClass.new({
  "gymclass_name" => "Individual",
  "instructor_id" => instructor3.id,
  "capacity" => 1,
  "class_date" => "2018-12-21",
  "schedule" => "1200-1300",
  "member_tier" => "Premium"
  })

gymclass8 = GymClass.new({
  "gymclass_name" => "Yoga",
  "instructor_id" => instructor4.id,
  "capacity" => 3,
  "class_date" => "2018-12-22",
  "schedule" => "1500-1600",
  "member_tier" => "Basic"
  })

gymclass9 = GymClass.new({
  "gymclass_name" => "Bodypump",
  "instructor_id" => instructor1.id,
  "capacity" => 7,
  "class_date" => "2018-12-20",
  "schedule" => "1300-1400",
  "member_tier" => "Premium"
  })

gymclass10 = GymClass.new({
"gymclass_name" => "Spin",
"instructor_id" => instructor2.id,
"capacity" => 2,
"class_date" => "2018-12-21",
"schedule" => "1400-1500",
"member_tier" => "Basic"
})

gymclass10 = GymClass.new({
"gymclass_name" => "Zumba",
"instructor_id" => instructor3.id,
"capacity" => 4,
"class_date" => "2018-12-20",
"schedule" => "0900-1000",
"member_tier" => "Basic"
})

gymclass10 = GymClass.new({
  "gymclass_name" => "Spin",
  "instructor_id" => instructor4.id,
  "capacity" => 3,
  "class_date" => "2018-12-20",
  "schedule" => "0900-1000",
  "member_tier" => "Premium"
  })

gymclass1.save()
gymclass2.save()
gymclass3.save()
gymclass4.save()
gymclass5.save()
gymclass6.save()
gymclass7.save()
gymclass8.save()
gymclass9.save()
gymclass10.save()


bookedclass1 = BookedClass.new({
  "member_id" => member1.id,
  "gymclass_id" => gymclass2.id
  })

bookedclass2 = BookedClass.new({
  "member_id" => member2.id,
  "gymclass_id" => gymclass2.id
  })

bookedclass3 = BookedClass.new({
  "member_id" => member15.id,
  "gymclass_id" => gymclass3.id
  })

bookedclass4 = BookedClass.new({
  "member_id" => member13.id,
  "gymclass_id" => gymclass9.id
  })

bookedclass5 = BookedClass.new({
  "member_id" => member11.id,
  "gymclass_id" => gymclass7.id
  })

bookedclass6 = BookedClass.new({
  "member_id" => member7.id,
  "gymclass_id" => gymclass8.id
  })

bookedclass7 = BookedClass.new({
  "member_id" => member9.id,
  "gymclass_id" => gymclass10.id
  })

bookedclass8 = BookedClass.new({
  "member_id" => member5.id,
  "gymclass_id" => gymclass4.id
  })


bookedclass1.save()
bookedclass2.save()
bookedclass3.save()
bookedclass4.save()
bookedclass5.save()
bookedclass6.save()
bookedclass7.save()
bookedclass8.save()


#
# binding.pry
# nil
# bookedclass1.attendees



# p member1.gymclasses()
# p gymclass1.members
