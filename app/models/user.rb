class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :carts
has_many :items, through: :carts
has_many :orders
has_many :items, through: :orders

end
