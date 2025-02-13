module Servers
  class InviteLinksController < BaseController
    before_action :set_server, :authorize_owner!

    def show
      @invite_link = @server.invite_links.find(params[:id])
    end

    def create
      @invite_link = @server.invite_links.create
      redirect_to server_invite_link_path(@server, @invite_link)
    end

  private
    def set_server
      @server = current_user.owned_servers.find(params[:server_id])
    end
  end
end
