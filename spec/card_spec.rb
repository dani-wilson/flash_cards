require './lib/card'

RSpec.describe Card do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card).to be_instance_of(Card)
  end

  it 'has a question' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.question).to eq("What is the capital of Alaska?")
  end

  it 'has an answer' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.answer).to eq("Juneau")
  end

  it 'has a category' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.category).to eq(:Geography)
  end
end

# card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
# card_2 = Card.new("Which country has the largest population in the world?", "China", :Geography)
# card_3 = Card.new("What is the name of the tallest mountain in the world?", "Mount Everest", :Geography)
# card_4 = Card.new("How many continents are there?", "7", :Geography)
