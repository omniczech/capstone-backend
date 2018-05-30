class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :todos
  def todos
    object.todos.pluck(:id)
  end
end
