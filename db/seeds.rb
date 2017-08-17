Skill.destroy_all
User.destroy_all
Contract.destroy_all

faces = ["http://2.bp.blogspot.com/-9s7b5WnLEj0/Vbde6RA5ryI/AAAAAAABr1w/XcXARhy67LQ/s1600/Yearbook%2B1980s%2B%25282%2529.jpg", "http://4.bp.blogspot.com/-6xQhiEKtvmw/VbdfFPRMDHI/AAAAAAABr3I/34rSDwVwb70/s1600/Yearbook%2B1980s%2B%25283%2529.jpg", "http://4.bp.blogspot.com/-L70oPcqYjy0/VbdfSnNyd1I/AAAAAAABr4g/_J5OeqIGjqM/s1600/Yearbook%2B1980s%2B%25284%2529.jpg", "http://2.bp.blogspot.com/-MEsvWo4eKoM/VbdfYOLLykI/AAAAAAABr5I/nHUhwAkCYek/s1600/Yearbook%2B1980s%2B%25288%2529.jpg", "http://1.bp.blogspot.com/-HeNiE3ZQa6Y/VbdfZoVoo2I/AAAAAAABr5Q/810nxoJqrIg/s1600/Yearbook%2B1980s%2B%25289%2529.jpg", "http://3.bp.blogspot.com/-No-KFhSHpWI/VbdeuRC_CkI/AAAAAAABr0g/bIUEn9SqFB0/s1600/Yearbook%2B1980s%2B%252810%2529.jpg", "http://4.bp.blogspot.com/-CRztmEoOlOI/VbdeuB6CXaI/AAAAAAABr0c/RiPO72lG8e8/s1600/Yearbook%2B1980s%2B%252811%2529.jpg", "http://1.bp.blogspot.com/-l_UIWbL2ySE/VbdexCxTSuI/AAAAAAABr04/z6lINzd73aw/s1600/Yearbook%2B1980s%2B%252813%2529.jpg", "http://4.bp.blogspot.com/-e8MW6gtZQMc/Vbdey0x-RkI/AAAAAAABr1I/ld9RCSziNwc/s1600/Yearbook%2B1980s%2B%252815%2529.jpg", "http://4.bp.blogspot.com/-0TWbtvsGfRA/VbdezytFNcI/AAAAAAABr1Q/vQxLT6waNYQ/s1600/Yearbook%2B1980s%2B%252816%2529.jpg", "http://3.bp.blogspot.com/-LFtL-HmyvOk/Vbde2fge7rI/AAAAAAABr1c/EX1ZMMIbhmI/s1600/Yearbook%2B1980s%2B%252817%2529.jpg", "http://4.bp.blogspot.com/-356caYl6gVM/Vbde37Ts1EI/AAAAAAABr1o/1Q95RMxBG1g/s1600/Yearbook%2B1980s%2B%252819%2529.jpg", "http://1.bp.blogspot.com/-bCXXG5igc80/Vbde9STqOmI/AAAAAAABr2I/ctqdtVjlkQk/s1600/Yearbook%2B1980s%2B%252822%2529.jpg", "http://1.bp.blogspot.com/-ZwV0lZJVOvw/Vbde-6Vwh6I/AAAAAAABr2Y/rrcwQgfpEgo/s1600/Yearbook%2B1980s%2B%252824%2529.jpg", "http://2.bp.blogspot.com/-w92vViuRb4M/VbdfAmfWATI/AAAAAAABr2o/CElbo91nj2k/s1600/Yearbook%2B1980s%2B%252825%2529.jpg", "http://3.bp.blogspot.com/-I3VhX9VysfU/Vbde_3-zXII/AAAAAAABr2g/bPluuh6fTP8/s1600/Yearbook%2B1980s%2B%252826%2529.jpg", "http://2.bp.blogspot.com/-ePBwm0ghgn0/VbdfCcN-EZI/AAAAAAABr2w/umM6PiNfY5I/s1600/Yearbook%2B1980s%2B%252828%2529.jpg"]
locations = ["Paris", "Bordeaux", "New York", "Toulouse", "Nantes", "Tokyo", "London"]

a = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: 'a@b.c',
  password: 'brains',
  address: locations.sample,
  profile_image: faces.sample,
  price: rand(100..500)
)

b = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: 'd@e.f',
  password: 'brains',
  address: locations.sample,
  profile_image: faces.sample,
  price: rand(100..500)
)

User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: 'tata@tata.com',
  password: 'brains',
  address: locations.sample,
  profile_image: faces.sample,
  # profile_image: Faker::LoremPixel.image("200x300", false, 'people'),
  price: rand(100..500)
)

User.all.each do |user|
  Skill.create!(name: Skill::SKILLS.sample, user_id: user.id)
end

contract = Contract.new(start_time: Date.today(), end_time: Date.today(), description: Faker::Lorem.paragraph(2, true, 4))
contract.user = a
contract.skill = b.skills.first
contract.save!

def create_users(times, locations, faces)
  times.times do
    User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Crypto.md5,
      address: locations.sample,
      profile_image: faces.sample,
      price: rand(100..500)
    )
  end

  User.all.each do |user|
    Skill.create!(name: Skill::SKILLS.sample, user_id: user.id)
  end
end

create_users(10, locations, faces)

100.times do
  contract = Contract.new(start_time: Date.today(), end_time: Date.today(), description: Faker::Lorem.paragraph(2, true, 4))
  contract.user = User.order("RANDOM()").first
  random_skill = Skill.order("RANDOM()").first
  contract.skill = random_skill
  contract.save!
end

create_users(100, locations, faces)
