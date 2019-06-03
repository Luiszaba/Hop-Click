class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :objectives, serializer: ObjectiveSerializer
  belongs_to :group
end
