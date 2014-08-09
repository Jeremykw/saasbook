class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1s = player1[1]
    p2s = player2[1]
    

    # Validate input
    unless p1s == 'R' || p1s == 'P' || p1s == 'S'
      begin
        raise NoSuchStrategyError, 'Strategy must be one of R,P,S'
        puts "one"
      end
    end
    unless p2s == 'R' || p2s == 'P' || p2s == 'S'
      begin
        raise NoSuchStrategyError, 'Strategy must be one of R,P,S'
        puts "one"
      end
      puts "2"
    end

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

  def self.tournament_winner(tourney)    
    if tourney.flatten.length == 16
      tourney[0][0] = RockPaperScissors.winner(tourney[0][0][0], tourney[0][0][1])
      tourney[0][1] = RockPaperScissors.winner(tourney[0][1][0], tourney[0][1][1])    
      tourney[1][0] = RockPaperScissors.winner(tourney[1][0][0], tourney[1][0][1])
      tourney[1][1] = RockPaperScissors.winner(tourney[1][1][0], tourney[1][1][1])
      self.tournament_winner(tourney)
    elsif tourney.flatten.length == 8
      tourney[0] = RockPaperScissors.winner(tourney[0][0], tourney[0][1])
      tourney[1] = RockPaperScissors.winner(tourney[1][0], tourney[1][1])
      self.tournament_winner(tourney)
    elsif tourney.flatten.length == 4
      return tourney = RockPaperScissors.winner(tourney[0], tourney[1])        
    end      

   
    
  end
  

end
