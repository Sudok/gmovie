class Backoffice::DashboardController < ApplicationController
  before_action :authenticate_admin!
  #Loading dashboard layout
  layout "backoffice"

  def index
  end
end
