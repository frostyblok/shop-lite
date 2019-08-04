class StripeChargesServices
	DEFAULT_CURRENCY = 'usd'.freeze

	def initialize(params, user)
		@stripe_email = params[:stripeEmail]
		@stripe_token = params[:stripeToken]
		@cart = params[:cart_id]
		@user = user
	end

	def call
		create_charge(create_customer)
		# create_charge(find_customer)
	end

	private

	attr_accessor :user, :cart, :stripe_email, :stripe_token

	# def find_customer
	# 	user.stripe_token ? retrieve_customer(user.stripe_token) : create_customer
	# end

	def retrieve_customer(stripe_token)
		Stripe::Customer.retrieve(stripe_token)
	end

	def create_customer
		customer = Stripe::Customer.create(
				email: stripe_email,
				source: stripe_token
		)
		# user.update(stripe_token: customer.id)
		customer
	end

	def create_charge(customer)
		# binding.pry
		begin
		Stripe::Charge.create(
				customer: customer.id,
				amount: order_amount,
				description: customer.email,
				currency: DEFAULT_CURRENCY
		)
		rescue => e
			raise e.message
		end
	end

	def order_amount
		Cart.find(cart).total_price
	end
end