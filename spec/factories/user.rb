FactoryGirl.define do


  factory :user, class: User do
    username {Faker::Internet.user_name}
  end


end
