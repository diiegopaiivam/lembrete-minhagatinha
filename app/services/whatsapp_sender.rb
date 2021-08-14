#whatsapp-sender.rb
require 'twilio-ruby'

account_sid = 'AC0b1d66fb5ceb999f186682163178bcdd'
auth_token = '63a47c661a99b06d915b6fbb4778bc8a'
client = Twilio::REST::Client.new(account_sid, auth_token)

message = client.messages.create(
                             from: 'whatsapp:+14155238886',
                             to: 'whatsapp:+558592777480',
                             body: 'Lembrar de tomar o remédio minha gatinha! Te amo!!! <3'
                           )
