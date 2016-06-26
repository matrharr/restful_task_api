class Task < ActiveRecord::Base

  has_many :user_tasks
  has_many :users, through: :user_tasks

  validates :title, :description, presence: true
  validates :title, length: { maximum: 20 }
  validates :description, length: { maximum: 500 }

end
