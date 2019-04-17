class Objective < ApplicationRecord

  belongs_to :group, optional: true
  belongs_to :user
  accepts_nested_attributes_for :group

end
