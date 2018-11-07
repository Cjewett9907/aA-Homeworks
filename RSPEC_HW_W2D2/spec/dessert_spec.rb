require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expects(@type).to eq(:type)

    end

    it "sets a quantity" do
      expects(@quantity).to eq(:quantity)
    end

    it "starts ingredients as an empty array" do
      expects(@ingredient).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expects(initalize).to_not raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expects(@ingredient.length).to eq(1)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expects(@ingredient).should include(/shuffle/)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expects(eat).to eq(@quantity - amount)
    end

    it "raises an error if the amount is greater than the quantity" do
      expects(@quantity < amount).to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expects(serve).should include(/.titleize/)
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expects(make_more).to eq(@chef.bake(self))

    end
  end
end
