class Round
    
    attr_reader :deck,
                :guess,
                :turns,
                :number_correct

    def initialize(deck)
        @deck = deck
        @guess = guess
        @turns = []
        @number_correct = []
    end

    def current_card
        current_card = @deck.cards[@turns.count]
    end

    def take_turn(guess)
        new_turn = Turn.new(guess, current_card)
        @turns << new_turn
        return new_turn
    end

    def number_correct
        if guess = true
            @number_correct << + 1
        end
    end








end