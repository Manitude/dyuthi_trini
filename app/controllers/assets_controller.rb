class AssetsController < ApplicationController
	def new
  	end

def edit
  @asset = Asset.find(params[:id])
end

def create
   	# render plain: asset_params.inspect
    @asset = Asset.new(asset_params)
    if @asset.save
      flash[:notice] = "You Signed up successfully"
      # flash[:color]= "valid"
    else
      flash[:error] = "Form is invalid"
      # flash[:color]= "invalid"
    end
    redirect_to @asset
   end

   def show
   	@asset = Asset.find(params[:id])
   end

  private

  def asset_params
    params.require(:asset).permit(:name, :line_id)
  end

end
