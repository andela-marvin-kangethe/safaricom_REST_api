FactoryBot.define do
  factory :m_pesa_service do
    status { [true, false].sample }
    county { MPesaService::COUNTIES.sample }
  end
end