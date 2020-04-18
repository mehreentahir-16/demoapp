# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
5.times do
    user = User.create!(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, age: ' ', gender: Faker::Gender.binary_type, bio: ' ', address: Faker::Address.full_address, education: ' ', cnic: ' ', location: ' ', created_at: Time.now, updated_at: Time.now, email: Faker::Internet.email, password: "some_password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil)
    5.times do 
        user.posts.create!(post_type: ' ', title: Faker::Lorem.sentence(word_count:3), description: Faker::Lorem::paragraph(sentence_count: 3), media_url: ' ', media_type: ' ', event_id: ' ', created_at: Time.now, updated_at: Time.now)
    end
end