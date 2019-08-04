module ApplicationHelper
	def total_cart_items
		return @cart.line_items.count > 0
	end

	def cart_count_over_one
		if @cart.line_items.count > 0
			return "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe
		end
	end
end
