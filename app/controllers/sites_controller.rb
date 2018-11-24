class SitesController < ApplicationController
  def new
  end

   def create
   	# render plain: corporate_params.inspect
    @site = Site.new(:name => site_params["name"], :corporate_id => Corporate.first.id)
    if @site.save
      flash[:notice] = "You Signed up successfully"
      # flash[:color]= "valid"
    else
      flash[:error] = "Form is invalid"
      # flash[:color]= "invalid"
    end
    redirect_to @site
   end

   def show
   	@site = Site.find(params[:id])
   end

  private

  def site_params
    params.require(:site).permit(:name)
  end
end
