namespace :notification do
  desc "Sends SMS notification to employees asking them to log any overtime they had"
  task sms: :environment do
    puts "I'm in a rake task"
  end

end
