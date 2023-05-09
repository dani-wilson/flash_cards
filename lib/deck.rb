class Deck 

    attr_reader :cards

    def initialize(cards)
        @cards = cards
        @count = count
    end

    def count
        @count = @cards.count
    end

    def cards_in_category(category)
        cards_array = Array.new
        cards.each do |card|
           if card.category == category
            cards_array << card
           end
        end
        return cards_array
    end
end