class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :todos
  has_one :user
  has_many :todos
  def todos
    object.todos.pluck(:id)
  end
end
