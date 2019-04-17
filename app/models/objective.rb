class Objective < ApplicationRecord

  belongs_to :group, optional: true
  # set belongs_to :group, optional :true,
  # => having difficulties associating Group user_id and User user_id with Objective
  belongs_to :user
  accepts_nested_attributes_for :group

end
