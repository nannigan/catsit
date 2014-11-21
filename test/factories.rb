FactoryGirl.define do
  factory :user do
   email "klover@mew.org"
    password "password"
    full_name "Krazed Kat"
    zip "94609"
    visit "true"
    housesit "false"
  end
end