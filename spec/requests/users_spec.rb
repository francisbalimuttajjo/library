require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it "returned results"  do
        age=67
        expect(age).to eq(67)
  end
   
  end
end
