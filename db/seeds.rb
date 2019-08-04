# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.index([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.index(name: 'Luke', movie: movies.first)

user = User.new(
		id: 2,
		name: "Oluwakunle Fakorede",
		email: "oluwakunle@example.com",
		password: "password",
		password_confirmation: "password"
)
user.save!

Instrument.create!([{
		                    title: "Z4 SDRIVE",
		                    brand: "BMW",
		                    model: "2017",
		                    description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
		                    condition: "Excellent",
		                    finish: "Blue",
		                    price: "29990000",
		                    image: Rails.root.join("app/assets/images/z4-sdrive.jpg").open,
		                    user_id: user.id
                    },
                    {
		                    title: "Supra Xtensive",
		                    brand: "Toyota",
		                    model: "2019 SE",
		                    description: "Whether it’s a rally car storming across a bumpy gravel road or a Formula 1 car speeding towards the famous Eau Rouge corner at the Spa-Francorchamps F1 track, supra offers thrills",
		                    condition: "Used",
		                    finish: "White",
		                    price: "2595",
		                    image: Rails.root.join("app/assets/images/toyota_supra.jpeg").open,
		                    user_id: user.id
                    },
                    {
		                    title: "M1 Fly-baby",
		                    brand: "BMW",
		                    model: "1978",
		                    description: "Are you a man who loves vintage cars? You are in for a treat",
		                    condition: "Used",
		                    finish: "RED",
		                    price: "28450000",
		                    image: Rails.root.join("app/assets/images/1978_m1.jpg").open,
		                    user_id: user.id
                    },
                    {
		                    title: "Cataracta Autopilot",
		                    brand: "BMW",
		                    model: "2023",
		                    description: "Boasting new levels of technological innovation and pure luxury will have petrolheads itching to spend.",
		                    condition: "New",
		                    finish: "Clear",
		                    price: "96000000",
		                    image: Rails.root.join("app/assets/images/tesla_autopilot.jpg").open,
		                    user_id: user.id
                    },
                    {
		                    title: "E-Tense Converger",
		                    brand: "E-Tense",
		                    model: "2023 SG",
		                    description: "one half of the car is designed to be driven with a conventional steering wheel and pedals, but the other is a separate cocoon where you sit, maybe with a passe",
		                    condition: "Mint",
		                    finish: "Satin",
		                    price: "59900000",
		                    image: Rails.root.join("app/assets/images/e-tense.jpg").open,
		                    user_id: user.id
                    },
                    {
		                    title: "Ibanez PM20 Pat Metheny Signature + Hard Shell case",
		                    brand: "Mercedes",
		                    model: "2018 FE",
		                    description: "Exciting new models are on the way as manufacturers replace old favourites and embrace a future without fossil fuels",
		                    condition: "Excellent",
		                    finish: "Yellow",
		                    price: "7990000",
		                    image: Rails.root.join("app/assets/images/cruise_autopilot.jpg").open,
		                    user_id: user.id
}])
