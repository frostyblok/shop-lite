module Carts
	def clear_cart(id)
		Cart.find(id).destroy
	end
end