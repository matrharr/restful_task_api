class User < ActiveRecord::Base

  has_many :user_tasks
  has_many :tasks, through: :user_tasks


  validates :name, :fb_token, presence: true
  validates :name, length: { in: 2..20 }

end
