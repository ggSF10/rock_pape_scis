require "rock_pape_scis/version"

module RockPapeScis
	
	class Player
		attr_reader :name, :move

  	def initialize(name, move = nil)
      @name = name
      @move = move
  	end

  end

  class Game

  	def play(player1, player2)
  		puts("#{player1.name} please choose rock, paper or scissors?")
  		player1[move] = gets.chomp

  		puts("#{player2.name} please choose rock, paper or scissors?")
  		player1[move] = gets.chomp

  		if player1[move] == player2[move]
  			return "It's a tie"
  		elsif player1[move] == "rock"
  			if player2[move] == "scissors"
  				return "#{player1.name} wins with rock!"
  			else
  				return "#{player2.name} wins with paper!"
  			end
  		elsif player1[move] == "paper"
  			if player2[move] == "rock"
  				return "#{player1.name} wins with paper!"
  			else
  				return "#{player2.name} wins with scissors!"
  			end
			elsif player1[move] == "scissors"
				if player2[move] == "rock"
					return "#{player2.name} wins with rock"
				else
					return "#{player1.name} wins with scissors"
				end
			end
  	end

	end
end
