class User < ApplicationRecord
  has_many :m_pesa_services

  USER_ROLE = ["ServiceUser", "CountyITManager", "CountyManager"]

  validates :name, presence: :true, uniqueness: :true
  validates :role, presence: :true
end
