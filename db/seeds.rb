# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if UserType.all.empty?
  UserType.create([
    {title: 'admin'},
    {title: 'moderator'},
    {title: 'contributor'},
    {title: 'subscriber'},
    {title: 'banned'}
  ])
end

if User.all.empty?
  user_type = UserType.find_by_title('admin')
  user_type.users.create(
    email: 'admin@whatilearnttoday.com',
    first_name: 'Admin',
    last_name: 'WhatILearntToday',
    password: 'P@ssw0rd',
    password_confirmation: 'P@ssw0rd'
  )
end
