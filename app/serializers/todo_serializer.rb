class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :done
  has_one :list
end
