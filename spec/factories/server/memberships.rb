FactoryBot.define do
  factory :server_membership, class: 'Server::Membership' do
    user { nil }
    server { nil }
  end
end
