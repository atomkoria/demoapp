require 'rubygems'
require 'twilio-ruby'
 
#Enter your Twilio account ID and token below:
account_sid = 'AC114a22749dc9e83e34ac3beb56585c55'
auth_token = 'd1175cc3d3822411fbd7323f601a8fc7'

#This creates a variable called 'client' that inherits all the abilities from the Twilio gem
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.messages.create(:body => "i wrote a program using the twilio API to send texts! love, your muffin",
    :to => "+14153593201",     # Replace with your actual cellphone number
    :from => "+16578889662")   # Replace with your Twilio number
puts message.sid

#puts message.sid actually sends the message to Twilio to distribute.