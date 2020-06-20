class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :pam_authenticatable

  has_many :resources, dependent: :destroy

  attr_accessor :password
  @password = nil

  def password_required?
    false
  end
end
