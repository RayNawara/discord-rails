FactoryBot.define do
  factory :server_invite_link, class: 'Server::InviteLink' do
    server { nil }
    uniq_id { "MyString" }
  end
end
