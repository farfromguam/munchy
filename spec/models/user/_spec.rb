require 'rails_helper'

RSpec.describe User, type: :model, user:true do

  before(:each) do
    @user = FactoryGirl.create(:user)
  end


  describe "THE FISHERMAN" do

    it 'knows what you did last summer' do
      expect(true).to eq true
    end

  end



end
