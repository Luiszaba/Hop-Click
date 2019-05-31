class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :due_date, :completed
  belongs_to :user

  def self.serialize(objective)
    serialized_objective = '{'
 
    serialized_objective += '"id": ' + objective.id.to_s + ', '
    serialized_objective += '"name": "' + objective.name + '", '
    serialized_objective += '"description": "' + objective.description + '", '
    serialized_objective += '"completed": "' + objective.completed.to_s + '", '
    serialized_objective += '"due_date": "' + objective.due_date.to_s + '", '
    serialized_objective += '"user": {'
    serialized_objective += '"id": "' + objective.user_id.to_s + '", '
    serialized_objective += '"name": "' + objective.user.name + '",'
    serialized_objective += '"email": "' + objective.user.email.to_s + '"} '
    # and end with the close brace
    serialized_objective += '}'
  end
end
