
class User < ActiveRecord::Base

  has_many :user_tasks
  has_many :tasks, through: :user_tasks


  validates :name, :email, presence: true
  validates :name, length: { in: 2..20 }
  validates :email, email_format: {message: "doesn't look like an email address"}


end
