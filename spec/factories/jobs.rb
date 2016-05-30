FactoryGirl.define do
  factory :job do
    title { FFaker::Job.title }
    link nil
    location { "#{FFaker::AddressUS.city}, #{FFaker::AddressUS.state_abbr}" }
    description "MyText"
    remote  { [true, false].sample }
    exp_date { Date.current + 30.days }
  end

  trait :with_link do
    link { FFaker::Internet.http_url }
  end
end
