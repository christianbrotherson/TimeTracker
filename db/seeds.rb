@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 User created"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Admin", last_name: "User")

puts "1 AdminUser created"

34.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: "submitted")
end

puts "34 submitted Posts have been created"

33.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: "approved")
end

puts "33 approved Posts have been created"

33.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: "rejected")
end

puts "33 rejected Posts have been created"
