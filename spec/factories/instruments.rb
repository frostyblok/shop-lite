FactoryBot.define do
	factory :instrument do
	  title { Faker::Team.name }
		brand { Faker::Team.sport }
		price { Faker::Number.number(6) }
		model { Faker::Vehicle.car_type }
		user
	end
end
