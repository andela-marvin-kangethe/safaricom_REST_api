class User < ApplicationRecord
  before_save :clean_data
  has_many :m_pesa_services

  USER_ROLE = ["ServiceUser", "CountyITManager", "CountyManager"]

  validates :name, presence: :true, uniqueness: :true
  validates :role, presence: :true

  def clean_data
    self.role = "ServiceUser" unless  User::USER_ROLE.include?(self.role.titleize)
  end
end
