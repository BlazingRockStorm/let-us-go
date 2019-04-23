class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  scope :by_role, -> {where role: "admin" }
  has_one_attached :avatar

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
			user.name = auth.info.first_name
			user.email = auth.info.email
      # user.avatar = auth.info.image
      user.password = "123456"
			user.save!
		end
  end
end
