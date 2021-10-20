class Reserve < ApplicationRecord
  belongs_to :user 

  validates :name
end
