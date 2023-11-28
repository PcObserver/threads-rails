if Rails.env.development? && !User.exists?
  User.create!(
    name: Faker::Name.name,
    email: 'test@email.com',
    password: '@Abc123456'
  )
end