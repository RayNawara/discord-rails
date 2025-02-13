require 'rails_helper'

RSpec.describe "server/channels/new", type: :view do
  before(:each) do
    assign(:server_channel, Server::Channel.new(
      name: "MyString",
      server: nil
    ))
  end

  it "renders new server_channel form" do
    render

    assert_select "form[action=?][method=?]", server_channels_path, "post" do

      assert_select "input[name=?]", "server_channel[name]"

      assert_select "input[name=?]", "server_channel[server_id]"
    end
  end
end
