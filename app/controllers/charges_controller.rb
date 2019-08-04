require 'stripe_charges_services.rb'
class ChargesController < ApplicationController
	rescue_from Stripe::CardError, with: :catch_exception

	def index
	end

	def new
	end

	def create
		StripeChargesServices.new(charge_params, current_user).call
		session[:cart_id] = nil
		redirect_to charges_path
	end

	private

	def charge_params
		params.permit(:stripeEmail, :stripeToken, :cart_id)
	end

	def catch_exception(error)
		flash[:error] = error.message
	end
end
