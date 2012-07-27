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

  factory :gallery do
    title "tytul galerii"
    description "opis galerii"
  end

  factory :photo do
    title "tytul zdjecia"
    description "opis galerii"
    photo { File.open(Rails.root.join("app", "assets", "images", "rails.png")) }
  end
end