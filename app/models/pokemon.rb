class Pokemon < ApplicationRecord
  belongs_to :region
  validates :name, presence:true
  validates :national_dex_number, presence:true
  validates :region, presence:true
end