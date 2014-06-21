# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    home  "7985641320"
    mobile "MyString"
  end
end
# validates :phone, uniqueness: { scope: :contact_id }