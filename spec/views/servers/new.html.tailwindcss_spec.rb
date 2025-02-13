require 'rails_helper'

RSpec.describe "servers/new", type: :view do
  before(:each) do
    assign(:server, Server.new(
      name: "MyString",
      owner: nil
    ))
  end

  it "renders new server form" do
    render

    assert_select "form[action=?][method=?]", servers_path, "post" do

      assert_select "input[name=?]", "server[name]"

      assert_select "input[name=?]", "server[owner_id]"
    end
  end
end
