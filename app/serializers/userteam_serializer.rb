class UserteamSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :team_id
  # has_one :user
  # has_one :team
end
