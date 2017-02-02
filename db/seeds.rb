# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all

Comment.create!([
  {
    name: "Johnny Wakeman",
    description: "What's up everrrybody?!"
  },
  {
    name: "Ping Ting",
    description: "Wing Ting Tong"
  },
  {
    name: "Joel Ackman",
    description: "Whaddayawant?"
  },
  {
    name: "Joeel Ackman",
    description: "Whadedayawant?"
  },
  {
    name: "Joewl Ackman",
    description: "Whadtdayawadant?"
  },
  {
    name: "Joeabl Ackaweman",
    description: "Whaddayaasdwant?"
  },
  {
    name: "Joebwerl Ackmnanaan",
    description: "Whaddbabayawant?"
  }])

  puts "Created #{Comment.count} comments!"
