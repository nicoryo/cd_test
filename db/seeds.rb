9.times do |n|
  User.create!(
    email: "test#{n + 1}@example.com",
    name: "テスト太郎#{n + 1}",
  )
end
