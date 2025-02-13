require 'rails_helper'

RSpec.describe "server/channels/index", type: :view do
  before(:each) do
    assign(:server_channels, [
      Server::Channel.create!(
        name: "Name",
        server: nil
      ),
      Server::Channel.create!(
        name: "Name",
        server: nil
      )
    ])
  end

  it "renders a list of server/channels" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
