require 'rails_helper'

RSpec.describe "servers/show", type: :view do
  before(:each) do
    assign(:server, Server.create!(
      name: "Name",
      owner: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
