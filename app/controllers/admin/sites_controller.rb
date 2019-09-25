class Admin::SitesController < AdminController
  before_action :authenticate_admin!
  
  def dashboard
  end

end
