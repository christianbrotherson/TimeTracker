Devise.setup do |config|'ff27532f70ed6b5e60efb2b3d313e760d986b6051d45677ac071d3d0146227f3516b45cae022947acb2a930351add8d234185f06a97ffdc189bbf3722a54e6f9'
  config.mailer_sender = 'ckb@christianbrotherson.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
'2950e384be6f3db5f6574cf820a804cda62c093b92d4ba8d0a5748014dd9a522324529ae0dc2f5f37de6cf9a956b25982949659f2c2f005353459a1ccb285e76'
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
