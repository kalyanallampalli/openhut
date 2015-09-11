module Seed
	module Shared
		class Restaurants
			def self.seed
				# Country and State data should be already seeded in the db while running this method
				country = Country.where(code: 'US').first
				state = country.states.where(code: 'TX').first

				restaurants = [
					{name: 'Chipotle', description: 'Chipotle Mexican Grill, Inc. is a chain of restaurants in the United States, United Kingdom, Canada, Germany, and France, specializing in Mission burritos and tacos.',
						address_attributes: {address_1: '5290 Belt Line Rd #102a', city: 'Dallas', state_id: state.id, country_id: country.id}},
					{name: 'Abacus Restaurant', description: 'Chef Kent Rathbun\'s innovative global cooking is artfully presented in a luxe, sophisticated space.',
						address_attributes: {address_1: '4511 McKinney Ave', city: 'Dallas', state_id: state.id, country_id: country.id}},
					{name: 'Stephan Pyles', description: 'Chefs create Stephan Pyle\'s innovative, globally influenced Southwestern eats in smart, modern digs.',
						address_attributes: {address_1: '1807 Ross Ave #200', city: 'Dallas', state_id: state.id, country_id: country.id}},
					{name: 'Fearing\'s Restaurant', description: 'Chef Dean Fearing\'s splashy Southwestern destination with a celebrated bar in the luxe Ritz-Carlton.', 
						address_attributes: {address_1: '2121 McKinney Ave', city: 'Dallas', state_id: state.id, country_id: country.id}},
					{name: 'Five Sixty by Wolfgang Puck', description: 'Celebrity chef\'s counter-serve chain offering signature pizzas, sandwiches & other light fare.', 
						address_attributes: {address_1: '300 Reunion Blvd E', city: 'Dallas', state_id: state.id, country_id: country.id}}
				]

				restaurants.each do |restaurant|
					Restaurant.create(restaurant)
					puts "Created restaurant #{restaurant[:name]}"
				end
			end
		end
	end
end