class MPesaService < ApplicationRecord
  belongs_to :user

  COUNTIES = [
    "Mombasa County", "Kwale", 
    "Kilifi County", "Tana River County",
    "Lamu County","Taita-Taveta County"
  ]
  
  validates :status, presence: :true
  validates :county, presence: :true
end
