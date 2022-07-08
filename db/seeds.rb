5.times do
  Role.create(
   character_name: Faker::Name.name,
  )
end

15.times do
  Audition.create(
    actor: Faker::Name.unique.first_name,
    location: Faker::Nation.unique.capital_city,
    phone: Faker::Number.number(digits: 3),
    role_id: Role.all.sample.id
  )
end

puts "All done!"