require_relative '../lib/rock_pape_scis.rb'
require_relative 'spec_helper.rb'

describe RockPapeScis do
	let(:player1) {RockPapeScis::Player.new("Bob")}
	let(:player2) {RockPapeScis::Player.new("Jon")}
	let(:game) {RockPapeScis::Game.new}

	describe RockPapeScis::Player do
		describe "#initialize" do
			it "creates a new instance of a player" do
    		expect(player1.name).to eq("Bob")  
    		expect(player1.move).to eq(nil)
			end
		end
	end

	describe RockPapeScis::Game do
		describe "#play" do
			it "determines a tie" do
				player1[move] = "rock"
				player1[move] = "rock"
				result = game.play(player1, player2)
				expect(result).to eq("It's a tie")
			end


		end
	end
end

