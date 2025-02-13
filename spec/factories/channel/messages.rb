FactoryBot.define do
  factory :channel_message, class: 'Channel::Message' do
    body { "MyText" }
    server_channel { nil }
    user { nil }
  end
end
