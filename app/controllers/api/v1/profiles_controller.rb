class Api::V1::ProfilesController < ActionController::Base

  doorkeeper_for :all, except: :index # All actions except index

  respond_to :html, :xml, :json

  def index
    if doorkeeper_token
      render :text => "token #{doorkeeper_token}"
    else
      render :text => "token not found"
    end
  end

  def show
    respond_with current_resource_owner
  end

  private

  # Find the user that owns the access token
  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
