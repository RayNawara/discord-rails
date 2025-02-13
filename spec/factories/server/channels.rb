FactoryBot.define do
  factory :server_channel, class: 'Server::Channel' do
    name { "MyString" }
    server { nil }
  end
end
