require 'takeaway'

describe Takeaway do

	let(:menu) { Takeaway.new }

		it "should have a menu" do
			expect(menu).to eq(menu)
		end	

		it "should allow an order to be placed" do
			expect{menu.take_order("Shwarama", 2, 9.00)}.to be_true
		end


end