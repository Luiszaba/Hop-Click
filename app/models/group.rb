class Group < ApplicationRecord

  has_many :objectives, dependent: :destroy
  has_and_belongs_to_many :users, through: :objectives
  accepts_nested_attributes_for :users, allow_destroy: true

end
