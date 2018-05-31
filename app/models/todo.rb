class Todo < ApplicationRecord
  belongs_to :list
  validates :title, presence: true
  validates :details, presence: true
end
