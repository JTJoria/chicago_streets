json.id enemy.id
json.full_name enemy.full_name
json.first_name enemy.first_name
json.last_name enemy.last_name
json.book enemy.book
json.color enemy.color

json.addresses enemy.addresses do |address|
  json.address_1 address.address_1
  unless address.address_2 == ""
    json.address_2 address.address_2
  end
  json.city address.city
  json.state address.state
  json.zip address.zip
end
