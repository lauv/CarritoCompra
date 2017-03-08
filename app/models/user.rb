class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :carts
  after_create :crear_carrito

  def crear_carrito
  	Cart.create(total_price: 0, user_id: id, open: true)
  end
end
