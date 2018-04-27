# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kingdom.destroy_all
User.destroy_all

user_list = [
    [ "Jiiiiiiiim", "jim@jim.com", "foobar", "foobar", true, true, Time.zone.now],
    [ "Jiiiiiiiim", "jim@ironpencil.com", "foobar", "foobar", true, true, Time.zone.now],
    [ "sighnoceros", "sighn@ceros.com", "foobar", "foobar", false, true, Time.zone.now]
]

user_list.each do | name, email, password, password_confirmation, admin, activated, activated_at |
    #puts "Creating user: #{{ name: name, email: email }}"
    User.create!( name: name, email: email, password: password, password_confirmation: password_confirmation, admin: admin, activated: activated, activated_at: activated_at );
end

User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar",
    admin:     true,
    activated: true,
    activated_at: Time.zone.now)

99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name:  name,
        email: email,
        password:              password,
        password_confirmation: password,
        activated: true,
        activated_at: Time.zone.now)
end


kingdom_list = [
    [ "Kingdom1", "My first kingdom", 420, User.first.id ],
    [ "Kingdom2", "My second kingdom", 1337, User.second.id ]
]

kingdom_list.each do | name, description, gold, user |
    Kingdom.create( name: name, description: description, gold: gold, user_id: user);
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
