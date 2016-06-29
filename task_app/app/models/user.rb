
class User < ActiveRecord::Base

  has_many :user_tasks
  has_many :tasks, through: :user_tasks


  validates :name, :email, presence: true
  validates :name, length: { in: 2..20 }
  validates :email, email_format: {message: "doesn't look like an email address"}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid:auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
