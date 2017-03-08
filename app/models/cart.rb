class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders

  def cerrar_carrito
	 self.open = false
	 save
	 create(total_price: 0, user_id: user.id, open: true)
  end
end