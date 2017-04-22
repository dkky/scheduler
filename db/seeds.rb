# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  name_list = ["Lesson 1", "Lesson 2", "Lesson 3", "Lesson 4", "Lesson 5"]
  desc_list = ["English stories lalala", "Brush up speaking kakaka", "Grammar and Composition Day"]
  day = (22..30).to_a.sample.to_s
  lesson = Lesson.new({"name"=> name_list.sample, "description"=> desc_list.sample, "start_time(1i)"=>"2017", "start_time(2i)"=>"4", "start_time(3i)"=> day, "start_time(4i)"=> ["13","14","15"].sample, "start_time(5i)"=> (1..59).to_a.sample.to_s, "end_time(1i)"=>"2017", "end_time(2i)"=>"4", "end_time(3i)"=> day, "end_time(4i)"=> ["16","17","18"].sample, "end_time(5i)"=>"00"})
  lesson.save
end