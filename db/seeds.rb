Skill.destroy_all
User.destroy_all

20.times do
  User.create!(
  	first_name: Faker::Name.first_name, 
  	last_name: Faker::Name.last_name, 
  	email: Faker::Internet.email, 
  	password: Faker::Crypto.md5, 
  	address: Faker::Address.city,
  	profile_image: Faker::LoremPixel.image("200x300", false, 'people'),
  	price: rand(100..500)
  	)
end

User.all.each do |user|
  Skill.create!(name: Skill::SKILLS.sample, user_id: user.id)
end
