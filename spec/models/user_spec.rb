
require 'rails_helper'


  RSpec.describe User, type: :model do
  describe "users  model" do
    before(:all) do
      @user = FactoryBot.build(:user)
    end

    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end

        it "is not valid without firstName" do
      @user1 = FactoryBot.build(:user, firstName: nil)
      expect(@user1).to_not be_valid 
    end

         it "is not valid without lastName" do
      @user2 = FactoryBot.build(:user, lastName: nil)
      expect(@user2).to_not be_valid 
    end

          it "is not valid without email" do
      @user3 = FactoryBot.build(:user, email: nil)
      expect(@user3).to_not be_valid 
    end

          it "is not valid with an invalid email" do
      @user4 = FactoryBot.build(:user, email: "g@")
      expect(@user4).to_not be_valid 
    end

          it "is not valid if passwords dont match" do
      @user5 = FactoryBot.build(:user, password_confirmation: 'baf')
 
      expect(@user5).to_not be_valid 
    end




 


  end
end

