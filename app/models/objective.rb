class Objective < ApplicationRecord

  belongs_to :group, optional: false
  belongs_to :user
  
  accepts_nested_attributes_for :group

end
