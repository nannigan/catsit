FactoryGirl.define do  factory :remove_kittypic_fr_cat, :class => 'RemoveKittypicFrCats' do
    
  end
  factory :photo do
    
  end

  factory :user do
   email "klover@mew.org"
    password "password"
    full_name "Krazed Kat"
    zip "94609"
    visit "true"
    housesit "false"
  end
end