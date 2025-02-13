require "rails_helper"

RSpec.describe Server::ChannelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/server/channels").to route_to("server/channels#index")
    end

    it "routes to #new" do
      expect(get: "/server/channels/new").to route_to("server/channels#new")
    end

    it "routes to #show" do
      expect(get: "/server/channels/1").to route_to("server/channels#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/server/channels/1/edit").to route_to("server/channels#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/server/channels").to route_to("server/channels#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/server/channels/1").to route_to("server/channels#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/server/channels/1").to route_to("server/channels#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/server/channels/1").to route_to("server/channels#destroy", id: "1")
    end
  end
end
