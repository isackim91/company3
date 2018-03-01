class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username
  has_many :posts
  has_many :comments
  has_many :orders

  def admin?
  	role == "admin"
  end

  def guest?
  	role == 'guest'
  end
  
end
