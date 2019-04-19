class Objective < ApplicationRecord

  belongs_to :group, optional: false
  has_many :users
  # set belongs_to :group, optional :true or false.  Needs testing
  # having difficulties associating Group user_id and User user_id with Objectives
  accepts_nested_attributes_for :group

end
