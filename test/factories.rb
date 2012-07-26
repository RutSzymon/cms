FactoryGirl.define do
  factory :article do
    sequence(:title){|n| "Tytul #{n}"}
    sequence(:summary){|n| "Wstep #{n}"}
    sequence(:body){|n| "Tresc #{n}"}
  end

  factory :site do
    sequence(:title){|n| "Tytul #{n}"}
    sequence(:body){|n| "Tresc #{n}"}
  end

  factory :contact do
    name "Name"
    sequence(:email){|n| "example#{n}@example.com"}
    topic "Temat"
    body "Tresc"
  end

  factory :setting do
    key "klucz"
    value "wartosc"
    content_type "string"
    required true
  end
end