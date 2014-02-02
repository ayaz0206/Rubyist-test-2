require 'rubygems'
require 'twilio-ruby'

class Takeaway

		def menu
			[{dish: "Hommos", price: 2.50 },
						{dish: "Tabbouleh", price: 3.00 },
						{dish: "Shwarama", price: 4.00 },
						{dish: "Chips", price: 1.50 },
						{dish: "Roasted Chicken", price: 7.50 },
						{dish: "King Prawns", price: 8.00 },
						{dish: "Falafel", price: 2.50 },
		]
		end

		attr_accessor :order, :total

		def initialize
			@order = []
			@total = []
		end

		def take_order(item, qty, price)
			raise "Oops, sorry, something is wrong!" 
			raise "Oops, the total seems to be wrong!" 
			order << item
			total << qty * price
			send_text

		end

		# def right_total?(item, qty, price)
		# end

		# def right_item?(item)
		# 	menu.any? {|menu| menu[:dish] == item.capitalize}
		# end

		def send_text(message)
			# Get your Account Sid and Auth Token from twilio.com/user/account
				account_sid = 'ACadcee7ea3c188113ae1947dfafa4865a'
				auth_token = '5ebcdfdbb5bc6abfe935e1e0aa52ad1d'
				@client = Twilio::REST::Client.new account_sid, auth_token
				message = @client.account.messages.create(
		    :to => "+447427053654",
		    :from => "+441988222006",
		    :body => "Thank you! Your order was placed and will be delivered soon!")
				puts message.sid
		end

end





