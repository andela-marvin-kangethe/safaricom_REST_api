require 'rails_helper'

# Test suite for the User model
RSpec.describe User, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the MPesaServices model
  # it { should have_many(:m_pesa_services).dependent(:destroy) }

  # Validation tests
  # ensure columns name and role are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:role) }
  it { should validate_uniqueness_of(:name) }
  
end