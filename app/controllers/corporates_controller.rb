class CorporatesController < ApplicationController
  def new
  end

   # def create
  	# # render plain: params[:corporate].inspect
  	# #   @corporate = Corporate.new(params[:corporate])
	  # # @corporate.save
	  # # redirect_to @corporate
   # end

  def edit
    @asset = Asset.find(params[:id])
  end

  def create
   	# render plain: corporate_params.inspect
    @corporate = Corporate.new(corporate_params)
    if @corporate.save
      flash[:notice] = "You Signed up successfully"
      # flash[:color]= "valid"
    else
      flash[:error] = "Form is invalid"
      # flash[:color]= "invalid"
    end
    redirect_to @corporate
   end

   def show
   	@corporate = Corporate.find(params[:id])
  end

  private

  def corporate_params
    params.require(:corporate).permit(:name, :license_package_id)
  end
end
