FactoryGirl.define do
  factory :article do
    sequence(:title){|n| "Tytul #{n}"}
    sequence(:body){|n| "Wstep #{n}"}
  end
end