module ApplicationHelper
def current_cart_link
	if session[:cart_id]
		link_to "Your Cart", cart_path(Cart.find(session[:cart_id]))
	else
		""
	end
end
end
