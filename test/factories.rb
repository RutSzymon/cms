FactoryGirl.define do
  factory :article do
    sequence(:title){|n| "Tytul #{n}"}
    sequence(:body){|n| "Wstep #{n}"}
  end

  factory :contact do
    name "Name"
    sequence(:email){|n| "example#{n}@example.com"}
    topic "Temat"
    body "Tresc"
  end
end