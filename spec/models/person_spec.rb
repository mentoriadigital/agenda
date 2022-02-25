require 'rails_helper'

RSpec.describe Person, type: :model do
  subject { described_class.new }
  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:birthdate) }
  end
end
