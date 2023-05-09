require './lib/deck'
require './lib/card'
require './lib/turn'

RSpec.describe Deck do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    it 'exists' do
        expect(deck).to be_instance_of(Deck)
    end

    it 'has cards' do
        expect(deck.cards).to eq(cards)
    end

    it 'can count the cards in the deck' do
        expect(deck.count).to eq(3)
    end

    it 'can return all cards in a category' do 
        #expect(deck.cards_in_category(:STEM)).to 
        expect(deck.cards_in_category(:STEM)).to match_array([card_2, card_3])
        #expect(deck.cards_in_category(:Geography)).to ([card_1])
    end

end

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
