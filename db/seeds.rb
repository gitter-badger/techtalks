# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

group = Group.create!({
  title: "Bristol JS"
})

events = []

(1..10).each do |i|
  events << Event.create!({
    title: "Talk Night ##{i}",
    group_id: group.id
  })
end

users = []

(1..10).each do |i|
  users << User.create!({
    first_name: "Adam",
    surname: "Butler",
    twitter_url: "https://twitter.com/rails",
    github_url: "http://github.com/rails",
    dob: "01-01-2000",
    email: "user#{i}@techtalks.io",
    password: "itsasecret"
  })
end

users.each do |user|
  events.each do |event|
    Rsvp.create!({
      user: user,
      event: event,
      attending: [true, false, nil].sample
    })
  end
end
