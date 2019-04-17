class Group < ApplicationRecord
  has_many :objectives, dependent: :destroy
  belongs_to :users
  accepts_nested_attributes_for :users, allow_destroy: true
end
