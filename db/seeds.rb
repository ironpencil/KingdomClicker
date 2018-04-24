# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kingdom.destroy_all

kingdom_list = [
    [ "Kingdom1", "My first kingdom", 420 ],
    [ "Kingdom2", "My second kingdom", 1337 ]
]

kingdom_list.each do | name, description, gold |
    Kingdom.create( name: name, description: description, gold: gold );
end

User.destroy_all

user_list = [
    [ "Jiiiiiiiim", "jim@jim.com", "foobar", "foobar" ],
    [ "Jiiiiiiiim", "jim@ironpencil.com", "foobar", "foobar" ],
    [ "sighnoceros", "sighn@ceros.com", "foobar", "foobar" ]
]

user_list << ["Example User", "example@railstutorial.org", "foobar", "foobar"]

99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    user_list << [ name, email, password, password ]
end

user_list.each do | name, email, password, password_confirmation |
    #puts "Creating user: #{{ name: name, email: email }}"
    User.create!( name: name, email: email, password: password, password_confirmation: password_confirmation );
end

Sample.destroy_all

sample_list = [
    [ "Test Sample 1", "Test sample 1 description." ],
    [ "Test Sample 2", "Test sample 2 description." ],
    [ "Test Sample 3", "Test sample 3 description." ]
]

sample_list.each do | name, description |
    Sample.create( name: name, description: description );
end
