require 'rails_helper'

RSpec.describe "server/channels/show", type: :view do
  before(:each) do
    assign(:server_channel, Server::Channel.create!(
      name: "Name",
      server: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
