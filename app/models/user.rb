# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :userteams
  has_many :lists
  has_many :todos, :through => :lists
end
