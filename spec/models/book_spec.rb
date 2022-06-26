require 'rails_helper'


  RSpec.describe Book, type: :model do
  describe "books  model" do
    before(:all) do
      @book = FactoryBot.build(:book)
    end

    it "is valid with valid attributes" do
      expect(@book).to be_valid
    end

    it "is not valid without title" do
      @book1 = FactoryBot.build(:book, title: nil)
      expect(@book1).to_not be_valid 
    end

     it "is not valid without author" do
      @book2 = FactoryBot.build(:book, author: nil)
      expect(@book2).to_not be_valid 
    end



 


  end
end

