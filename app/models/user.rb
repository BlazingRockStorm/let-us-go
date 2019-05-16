class User < ApplicationRecord
  has_many :attendances, dependent: :delete_all
  has_many :events, through: :attendances
  has_many :joined_events, through: :attendances, source: :event
  enum role: [:user, :provider, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_one_attached :avatar
  has_many :events, class_name: "Event", foreign_key: "provider_id"

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(auth)
    # byebug
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.name = auth.info.last_name + ' ' + auth.info.first_name
			user.email = auth.info.email
      # user.avatar = auth.info.image
      user.password = "123456"
			user.save!
		end
  end
end
