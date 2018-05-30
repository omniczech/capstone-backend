class TeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name
  has_many :userteams
  def userteams
    object.userteams.pluck(:id)
  end
end
