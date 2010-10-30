class User < ActiveRecord::Base
  # Include devise modules. Others available are:
  # :token_authenticatable, :lockable, :oauthable, :encryptable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable, :validatable

  validates :username, :presence => true, :uniqueness => true
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me
end
