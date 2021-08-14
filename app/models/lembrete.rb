class Lembrete < ApplicationRecord
    def self.send_message
        account_sid = 'AC0b1d66fb5ceb999f186682163178bcdd'
        auth_token = '63a47c661a99b06d915b6fbb4778bc8a'
        @client = Twilio::REST::Client.new account_sid, auth_token
        myLogger = Logger.new(STDOUT)
        myLogger = Logger.new('log/my_log.log')
        text = "Lembrar de tomar o remédio minha gatinha! Te amo!!! <3"
        message = @client.messages.create(
            from: 'whatsapp:+14155238886',
            to: 'whatsapp:+558592777480',
            body: text
          )
        Rails.logger.debug '===========whenever is working================'
    end 
end
