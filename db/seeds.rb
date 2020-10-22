require 'faker'
Faker::Config.locale = :fr

User.destroy_all
City.destroy_all

#Cities

10.times do
  city_and_zip = Faker::Address.full_address.split(', ').last
  zip = city_and_zip.split(' ').first
  city_name = city_and_zip.split(' ').last
  City.create(name: city_name, zip_code: zip)
end

#Users
adjectifs= %w[petit grand maigre gros chauve muscle intelligent parfait mediocre insupportable eblouissant valeureux]
10.times do 
  first_name = Faker::Name.first_name
  age = rand(18..90)
  city = City.all.sample
   text = "Je m'appelle #{first_name}, je suis #{adjectifs.sample} et mon livre préféré est #{Faker::Book.title}, je suis #{Faker::Name.title[:job].sample} à #{city.name} "
  User.create(first_name: first_name, last_name: Faker::Name.last_name ,description: text, email: Faker::Internet.email, age: age, city: city )

end

#Gossips
20.times do 
  Gossip.create(title: Faker::Hipster.word, content: Faker::ChuckNorris.fact, )
  
end


