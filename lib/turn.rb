class Turn

    #attr_reader :guess, :correct? :card, :feedback

    def initialize(guess, card)
        @guess = guess
        @card = card
    end
end
