#Create a GuessingGame class which is initialized with an integer called answer.

#Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.

#Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.


class GuessingGame
 
  def initialize(answer)
        @answer = answer.to_i
    end

    def guess(guess)
    @guess = guess
        if @guess > @answer
        :high
        elsif @guess < @answer
        :low
        else 
        :correct
        end
    end

    def solved?()
        if @guess == @answer
            true
        else
            false
        end
    end



end

game = GuessingGame.new(10)
puts game.guess(10)
puts game.solved?

