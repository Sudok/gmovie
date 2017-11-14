class BackofficeController < ApplicationController
  before_action :authenticate_admin!
  #Loading dashboard layout
  layout "backoffice"

end