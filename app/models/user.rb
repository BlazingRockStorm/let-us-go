class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  scope :by_role, -> {where role: "admin" }

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
