class BackofficeController < ApplicationController
  before_action :authenticate_admin!
  #Loading dashboard layout
  layout "backoffice"

  # Change current_user to pundit
  def pundit_user
    current_admin 
  end
end