Fabricator(:user) do
  provider "github"
  uid { sequence(:uid, 100) }
  name { Faker::Name.name } 
  nickname { Faker::Internet.user_name }
  image { Faker::Internet.url('github.com', '/image.png') }
end
