class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :todos
  def todos
    object.todos.pluck(:id)
  end
  has_one :user
  def user
    object.user.id
  end
end
