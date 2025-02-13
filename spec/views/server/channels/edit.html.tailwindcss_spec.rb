require 'rails_helper'

RSpec.describe "server/channels/edit", type: :view do
  let(:server_channel) {
    Server::Channel.create!(
      name: "MyString",
      server: nil
    )
  }

  before(:each) do
    assign(:server_channel, server_channel)
  end

  it "renders the edit server_channel form" do
    render

    assert_select "form[action=?][method=?]", server_channel_path(server_channel), "post" do

      assert_select "input[name=?]", "server_channel[name]"

      assert_select "input[name=?]", "server_channel[server_id]"
    end
  end
end
