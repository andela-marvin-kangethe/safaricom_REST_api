require 'rails_helper'

# Test suite for the MPesaService model
RSpec.describe MPesaService, type: :model do
  # Validation tests
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:county) }
  
end