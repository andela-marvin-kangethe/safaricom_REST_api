class MPesaService < ApplicationRecord
  belongs_to :user
  before_save :clean_data

  COUNTIES = [
    "Other", "Mombasa", "Kwale", 
    "Kilifi", "Tana River",
    "Lamu","Taita-Taveta"
  ]
  
  validates :status, presence: :true
  validates :county, presence: :true

  def clean_data
    self.county = "Other" if MPesaService::COUNTIES.include?(self.county.titleize)
    self.status = ["true", "1"].include?(self.status.downcase) ? "True" : "False"
  end
end
