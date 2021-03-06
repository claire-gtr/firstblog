class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
