class Region < ApplicationRecord
  validates :region, presence:true
  has_many :pokemon
end
