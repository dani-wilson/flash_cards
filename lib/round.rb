class Round
    
    attr_reader :deck,
                :guess,
                :turns,
                :number_correct

    def initialize(deck)
        @deck = deck
        @guess = guess
        @turns = []
        @number_correct = 0
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
        count_correct = 0
        turns.each do |turn|
            if turn.correct? == true
                count_correct += 1
            end
        end
        return count_correct
    end

    def number_correct_by_category(category)
        count_correct_category = 0
        turns.each do |turn|
            if turn.correct? == true && turn.card.category == category
                count_correct_category += 1
            end
        end
        return count_correct_category
    end

end