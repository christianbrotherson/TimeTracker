@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow", 
                    phone: "7025750816")

puts "1 User created"

AdminUser.create(email: "admin@test.com", 
                password: "asdfasdf", 
                password_confirmation: "asdfasdf", 
                first_name: "Admin", 
                last_name: "User",
                phone: "7025750816")

puts "1 AdminUser created"

34.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: "submitted", overtime_request: 2.5)
end

puts "34 submitted Posts have been created"

33.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: "approved", overtime_request: 2.5)
end

puts "33 approved Posts have been created"

33.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: "rejected", overtime_request: 2.5)
end

puts "33 rejected Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"