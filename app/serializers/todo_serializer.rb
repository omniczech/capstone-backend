class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :done
  has_one :list
  def list
    object.list.id
  end
end
