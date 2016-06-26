class UserTask < ActiveRecord::Base

  belongs_to :user
  belongs_to :task

  validates :user_id, :task_id, presence: true
  validates :user_id, :task_id, numericality: { only_integer: true }


end
