class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :objectives
  belongs_to :group
end
