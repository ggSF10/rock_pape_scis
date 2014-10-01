require_relative '../lib/rock_pape_scis.rb'
require_relative 'spec_helper.rb'


describe RockPapeScis::Game do
	describe "#play" do
		it "determines a tie" do
			player1 = { :move => "rock", :name => "George" }
			player2 = { :move => "rock", :name => "Mike" }
			result = RockPapeScis::Game.play(player1, player2)
			expect(result).to eq("It's a tie")
		end

		it "determines rock a winner vs. scissors" do
			player1 = { :move => "rock", :name => "George" }
			player2 = { :move => "scissors", :name => "Mike" }
			result = RockPapeScis::Game.play(player1, player2)
			expect(result).to eq("George wins with rock!")
		end


		it "determines paper a winner vs. rock" do
			player1 = { :move => "paper", :name => "George" }
			player2 = { :move => "rock", :name => "Mike" }
			result = RockPapeScis::Game.play(player1, player2)
			expect(result).to eq("George wins with paper!")
		end


		it "determines scissors a winner vs. paper" do
			player1 = { :move => "scissors", :name => "George" }
			player2 = { :move => "paper", :name => "Mike" }
			result = RockPapeScis::Game.play(player1, player2)
			expect(result).to eq("George wins with scissors!")
		end


	end
end

