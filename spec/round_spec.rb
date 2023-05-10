require './lib/deck'
require './lib/round'
require './lib/turn'
require './lib/card'

RSpec.describe Round do

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round = Round.new(deck)

    it 'exists' do
        expect(round).to be_an_instance_of(Round)
    end

    it 'has a deck' do
        expect(deck).to be_an_instance_of(Deck)
        expect(deck.count).to eq(3)
    end

    it 'starts out with zero turns' do
        expect(round.turns).to eq([])
    end

    it 'has a current card' do
        expect(round.current_card).to eq(deck.cards.first)
    end

    it 'takes a turn' do
        expect(round.turns).to eq([1])
    end
end