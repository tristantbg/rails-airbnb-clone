Skill.destroy_all
User.destroy_all
Contract.destroy_all

faces = ["http://2.bp.blogspot.com/-9s7b5WnLEj0/Vbde6RA5ryI/AAAAAAABr1w/XcXARhy67LQ/s1600/Yearbook%2B1980s%2B%25282%2529.jpg", "http://4.bp.blogspot.com/-6xQhiEKtvmw/VbdfFPRMDHI/AAAAAAABr3I/34rSDwVwb70/s1600/Yearbook%2B1980s%2B%25283%2529.jpg", "http://4.bp.blogspot.com/-L70oPcqYjy0/VbdfSnNyd1I/AAAAAAABr4g/_J5OeqIGjqM/s1600/Yearbook%2B1980s%2B%25284%2529.jpg", "http://2.bp.blogspot.com/-MEsvWo4eKoM/VbdfYOLLykI/AAAAAAABr5I/nHUhwAkCYek/s1600/Yearbook%2B1980s%2B%25288%2529.jpg", "http://1.bp.blogspot.com/-HeNiE3ZQa6Y/VbdfZoVoo2I/AAAAAAABr5Q/810nxoJqrIg/s1600/Yearbook%2B1980s%2B%25289%2529.jpg", "http://3.bp.blogspot.com/-No-KFhSHpWI/VbdeuRC_CkI/AAAAAAABr0g/bIUEn9SqFB0/s1600/Yearbook%2B1980s%2B%252810%2529.jpg", "http://4.bp.blogspot.com/-CRztmEoOlOI/VbdeuB6CXaI/AAAAAAABr0c/RiPO72lG8e8/s1600/Yearbook%2B1980s%2B%252811%2529.jpg", "http://1.bp.blogspot.com/-l_UIWbL2ySE/VbdexCxTSuI/AAAAAAABr04/z6lINzd73aw/s1600/Yearbook%2B1980s%2B%252813%2529.jpg", "http://4.bp.blogspot.com/-e8MW6gtZQMc/Vbdey0x-RkI/AAAAAAABr1I/ld9RCSziNwc/s1600/Yearbook%2B1980s%2B%252815%2529.jpg", "http://4.bp.blogspot.com/-0TWbtvsGfRA/VbdezytFNcI/AAAAAAABr1Q/vQxLT6waNYQ/s1600/Yearbook%2B1980s%2B%252816%2529.jpg", "http://3.bp.blogspot.com/-LFtL-HmyvOk/Vbde2fge7rI/AAAAAAABr1c/EX1ZMMIbhmI/s1600/Yearbook%2B1980s%2B%252817%2529.jpg", "http://4.bp.blogspot.com/-356caYl6gVM/Vbde37Ts1EI/AAAAAAABr1o/1Q95RMxBG1g/s1600/Yearbook%2B1980s%2B%252819%2529.jpg", "http://1.bp.blogspot.com/-bCXXG5igc80/Vbde9STqOmI/AAAAAAABr2I/ctqdtVjlkQk/s1600/Yearbook%2B1980s%2B%252822%2529.jpg", "http://1.bp.blogspot.com/-ZwV0lZJVOvw/Vbde-6Vwh6I/AAAAAAABr2Y/rrcwQgfpEgo/s1600/Yearbook%2B1980s%2B%252824%2529.jpg", "http://2.bp.blogspot.com/-w92vViuRb4M/VbdfAmfWATI/AAAAAAABr2o/CElbo91nj2k/s1600/Yearbook%2B1980s%2B%252825%2529.jpg", "http://3.bp.blogspot.com/-I3VhX9VysfU/Vbde_3-zXII/AAAAAAABr2g/bPluuh6fTP8/s1600/Yearbook%2B1980s%2B%252826%2529.jpg", "http://2.bp.blogspot.com/-ePBwm0ghgn0/VbdfCcN-EZI/AAAAAAABr2w/umM6PiNfY5I/s1600/Yearbook%2B1980s%2B%252828%2529.jpg", "http://3.bp.blogspot.com/-QbASW0FAHlc/VbdfXE_zehI/AAAAAAABr48/gJ8Z52I0rNE/s1600/Yearbook%2B1980s%2B%25287%2529.jpg", "http://2.bp.blogspot.com/-IQihcu4qTPA/VbdfC2N-mlI/AAAAAAABr20/7qPSLjuhZSs/s1600/Yearbook%2B1980s%2B%252827%2529.jpg", "http://4.bp.blogspot.com/-DaAVGTewrE8/VbdfEFdkdTI/AAAAAAABr3A/ZLNjokAx26k/s1600/Yearbook%2B1980s%2B%252829%2529.jpg", "http://1.bp.blogspot.com/-6gAmhh9Qi0Q/VbdfG56EF3I/AAAAAAABr3Y/YBGMIegerAg/s1600/Yearbook%2B1980s%2B%252831%2529.jpg", "http://4.bp.blogspot.com/-Iw9hWTSgVWk/VbdfPkZYiwI/AAAAAAABr4I/-A5i8-y2deo/s1600/Yearbook%2B1980s%2B%252837%2529.jpg", "http://3.bp.blogspot.com/-heYNfx0J2tg/VbdfQ0mhoJI/AAAAAAABr4Q/IqTVRF0N_8s/s1600/Yearbook%2B1980s%2B%252838%2529.jpg", "http://4.bp.blogspot.com/-feraZ_XKUwg/Vbdet0_h1kI/AAAAAAABr0Y/SMmdI1okbq8/s1600/Yearbook%2B1980s%2B%25281%2529.jpg", "https://s-media-cache-ak0.pinimg.com/736x/79/d9/d8/79d9d8d5181a1c03d28d66e7317a898d--funny-yearbook-yearbook-photos.jpg", "https://www.austinchronicle.com/binary/8111/hair-yearbook-boy.jpg", "http://cdn.smosh.com/sites/default/files/legacy.images/smosh-pit/052011/yearbook-bad-2.jpg", "https://s-media-cache-ak0.pinimg.com/564x/5d/8c/d0/5d8cd0880c7f7166fdeae942bb92eb49.jpg", "https://s-media-cache-ak0.pinimg.com/736x/82/05/a8/8205a8d57b8cd4a0e59c87b01510c64d--funny-yearbook-yearbook-photos.jpg", "https://www.trendzified.net/wp-content/uploads/2014/06/Funny-Yearbook-Photos_12.jpg", "http://cdn.smosh.com/sites/default/files/bloguploads/awkward-yearbook-rainbow-shirt.jpg", "http://tu9srvbirvvtmjiky2rums13d3cuy3jhdmvvbmxpbmuuy29t.g00.craveonline.com/g00/2_d3d3LmNyYXZlb25saW5lLmNvbQ%3D%3D_/TU9SRVBIRVVTMjIkaHR0cDovL2NkbjEtd3d3LmNyYXZlb25saW5lLmNvbS9hc3NldHMvdXBsb2Fkcy9nYWxsZXJ5L2Fic3VyZC15ZWFyYm9vay1waG90b3Mtdm9sLTItbWFuZGF0b3J5L2Z1bm55LXllYXJib29rLWh1Z2dpbmctcGlrYWNodS5qcGc%2FaTEwYy5tYXJrLmltYWdlLnR5cGU%3D_$/$/$/$/$/$"]
locations = ["Paris", "Bordeaux", "New York", "Toulouse", "Nantes", "Tokyo", "London"]

a = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: 'a@b.c',
  password: 'brains',
  address: locations.sample,
  description: Faker::Lorem.paragraph(5, true, 10),
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
  description: Faker::Lorem.paragraph(5, true, 10),
  price: rand(100..500)
)

User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: 'tata@tata.com',
  password: 'brains',
  address: locations.sample,
  profile_image: faces.sample,
  description: Faker::Lorem.paragraph(5, true, 10),
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
      description: Faker::Lorem.paragraph(5, true, 10),
      profile_image: faces.sample,
      price: rand(100..500)
    )
  end

  User.all.each do |user|
    Skill.create!(name: Skill::SKILLS.sample, user_id: user.id)
  end
end

create_users(10, locations, faces)

300.times do
  contract = Contract.new(start_time: Date.today(), end_time: Date.today(), description: Faker::Lorem.paragraph(2, true, 4))
  contract.user = User.order("RANDOM()").first
  random_skill = Skill.order("RANDOM()").first
  contract.skill = random_skill
  contract.status = [0,1,nil].sample
  contract.save!
end

create_users(100, locations, faces)
