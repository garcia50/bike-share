require 'rails_helper'

describe Order, type: :model do
  describe "Validations" do
    it { should validate_presence_of :cart_id }
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :status }
  end

  describe "Relationships" do
    it { should belong_to(:cart) }
    it { should belong_to(:user) }
  end
end