require 'rspec'
require 'pry'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  
  it 'exists and has readable attributes' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    
    expect(charlotte_bronte).to be_an(Author)
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq([])
  end
  
  it 'can write books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
    expect(charlotte_bronte.books).to eq([jane_eyre, villette])
  end
end