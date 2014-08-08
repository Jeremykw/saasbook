class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1s = player1[1]
    p2s = player2[1]
    
=begin
    # Validate input
    if p1s != 'R' || p1s != 'P' || p1s != 'S'
      # raise RockPaperScissors::NoSuchStrategyError 'Strategy must be one of R,P,S'
      puts "one"
    elsif p1s != 'R' || p1s != 'P' || p1s != 'S'
      #raise RockPaperScissors::NoSuchStrategyError 'Strategy must be one of R,P,S'
      puts "2"
    end
=end
    
    if p1s == 'R' # If player1 plays R
      if p2s == 'R'
        return player1
      elsif p2s == 'P'
        return player2
      elsif p2s == 'S'
        return player1
      end      
    elsif p1s == 'P' # If player2 plays P
      if p2s == 'R'
        return player1
      elsif p2s == 'P'
        return player1
      elsif p2s == 'S'
        return player2     
      end
    elsif p1s == 'S' # If player2 plays S
      if p2s == 'R'
        return player2
      elsif p2s == 'P'
        return player1
      elsif p2s == 'S'
        return player1
      end     
    end
    
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
