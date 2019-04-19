class Group < ApplicationRecord

  has_many :objectives
  has_many :users, through: :objectives
  accepts_nested_attributes_for :users, allow_destroy: true
end
