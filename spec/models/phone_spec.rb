require 'rails_helper'

RSpec.describe Phone, type: :model do
  subject { described_class.new }
  describe "Validations" do
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:description) }
  end
end
