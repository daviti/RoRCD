require 'pry'
require 'pry-nav'
 
#CODE IS "RailsSchoolDevelop14"



	
	david = '+14153121362'


require 'twilo-ruby'
require 'time'

account_sid = 'AC79c02f9e31512f7b0fc880d4ccb0b1af'
auth_token = '72f9a8d7fb12913f52e8985aef6a0b6f'
my_twilio_number = '+17602734264'


@client =  Twilio::REST::Client.new account_sid, auth_token

def send_sms(to, message)

@client.account.mesages.create(
	:from => my_twilio_number,
	:to => number,
	:body => "hi"

	)

end

story = []
current_s = "I went to a bar another night."
story << current_s
 
phones.each do |name, number|
	message = send_sms(number, "Add sentance to \"#{current_s}\"")
	begin 
  		answer = current_s
  		sleep 5 #seconds
  		received_messages = @client.account.messages.list
  		last_message = received_messages.map {|m| m if m.from == phones[name]}.compact.first
  		if Time.parse(last_message.date_sent) > Time.parse(message.date_created)
  			answer = last_message.body
  		end
	end while answer == current_s
	current_s = answer
	story << current_s	
end
 
binding.pry
end
 
 
old_story => ["I went to a bar another night.",
 "And I saw a ghost",
 "who flew through the trees, and came upon a",
 "Alien having a beer he opened a time portal. ",
 "He was staring at me and offered me a beer.",
 "So of course I pounded it!",
 "And that, kids, is how you get pound cake."]
end