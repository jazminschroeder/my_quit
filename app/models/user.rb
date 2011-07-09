class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me
  validates_presence_of :username
  validates_format_of :username, :with => /^[A-Za-z\d_]+$/, :allow_nil => true
  has_one :quit_profile

  def has_quit_profile?
    quit_profile.present?
  end
end
