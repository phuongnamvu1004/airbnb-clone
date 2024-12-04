20.times do
    Property.create!({
      name: Faker::Lorem.sentence(word_count: 3),
      description: Faker::Lorem.paragraph(sentence_count: 3),
      headline: Faker::Lorem.sentence(word_count: 6),
      address_1: Faker::Address.street_address,
      address_2: Faker::Address.street_name,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      price: Money.from_amount((50..100).to_a.sample, 'USD')
    })
end
