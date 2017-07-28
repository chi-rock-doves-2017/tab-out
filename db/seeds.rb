# THIS SEED FILE DESTROYS EVERYTHING!!!!!

Item.delete_all
Tab.delete_all
Customer.delete_all
Business.delete_all

james = Customer.create(username: 'jameswmoody', password: 'password', vault_id: 'braintreesecret', first_name: 'James', last_name: 'Moody', phone_number: '+13121234567', email: 'james@james.com')
evan = Customer.create(username: 'ehickle', password: 'password', vault_id: 'braintreesecret', first_name: 'Evan', last_name: 'Hickle', phone_number: '+13121234568', email: 'evan@evan.com')
nico = Customer.create(username: 'nicoglennon', password: 'password', vault_id: 'braintreesecret', first_name: 'Nico', last_name: 'Glennon', phone_number: '+13121234569', email: 'nico@nico.com')
josh = Customer.create(username: 'jmharvey0', password: 'password', vault_id: 'braintreesecret', first_name: 'Josh', last_name: 'Harvey', phone_number: '+13121234560', email: 'josh@josh.com')

dugans = Business.create(username: 'dugans_on_halsted', password: 'password', sub_merchant_id: 'braintreesecret0', email: 'dugans@dugans.com', doing_business_as: 'Dugans')
sliperyslope = Business.create(username: 'sliperyslope', password: 'password', sub_merchant_id: 'braintreesecret1', email: 'slipery@slope.com', doing_business_as: 'Sliper Slope')
emporium = Business.create(username: 'emporium', password: 'password', sub_merchant_id: 'braintreesecret2', email: 'emporium@emporium.com', doing_business_as: 'Emporium')
mullens = Business.create(username: 'mullens_wheaton', password: 'password', sub_merchant_id: 'braintreesecret3', email: 'mullens@mullens.com', doing_business_as: 'Wheaton Mullens')

customers = [james, evan, nico, josh]
businesses = [dugans, sliperyslope, emporium, mullens]
drink_types = ['Shot/Liqour', 'Beer', 'Wine', 'Cocktail']

20.times do
  Tab.create(customer: customers.sample, business: businesses.sample)
end

tabs = Tab.all

60.times do
  Item.create(drink_type: drink_types.sample, price: rand(1..10)*100, tab: tabs.sample)
end
