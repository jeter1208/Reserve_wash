class Reserve < ApplicationRecord
  belongs_to :user 

  validates :name,  :presence => { :message => "不能空白" }
end
