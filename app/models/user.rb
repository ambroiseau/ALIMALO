class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
 scope :activate_users, -> {where(active: true)}
  scope :inactivate_users, -> {where(active: false)}
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
