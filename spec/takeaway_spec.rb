require 'takeaway'

describe Takeaway do

	let(:menu) { Takeaway.new }

		it "should have a menu" do
			expect(menu).to eq(menu)
		end	

		it "should allow an order to be placed" do
			expect{menu.take_order("Shwarama", 2, 9.00)}.to be_true
		end

		# it "should not throw an error if item ordered is on the menu" do
		# 	expect(menu.take_order("Chips", 1, 1.50)).to_not raise_error
		# end

		# it "should throw an error if item ordered is not on the menu" do
		# 	expect(menu.take_order("Coke",1, 0.60 )).to raise_error(RuntimeError)
		# end

		# it "should throw an error if the price is not correct" do
		# 	expect(menu.take_order("Tabbouleh", 2, 5.00)).to raise_error(RuntimeError)
		# end

		it "should send a confirmation text for a successful order" do
			allow(menu).to receive(:send_text)
		end



end