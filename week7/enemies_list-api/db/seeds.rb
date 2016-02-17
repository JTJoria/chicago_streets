
10.times do 
  Enemy.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    color: Faker::Color.name,
    book: Faker::Book.title
    )

end

10.times do
  Address.create!(
    :address_1 => Faker::Address.street_address,
    :address_2 => rand(1..10) > 4 ? Faker::Address.secondary_address : "",
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip => Faker::Address.zip_code,
    :enemy_id => rand(1..10)
    )
end
