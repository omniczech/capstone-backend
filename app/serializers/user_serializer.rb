# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :lists
  has_many :userteams
  def lists
    object.lists.pluck(:id)
  end
  def userteams
    object.userteams.pluck(:id)
  end
end
