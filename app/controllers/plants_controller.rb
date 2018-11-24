class PlantsController < ApplicationController
  def new
  end

   def create
   	# render plain: plant_params.inspect
    @plant = Plant.new(plant_params)
    if @plant.save
      flash[:notice] = "You Signed up successfully"
      # flash[:color]= "valid"
    else
      flash[:error] = "Form is invalid"
      # flash[:color]= "invalid"
    end
    redirect_to @plant
   end

   def show
   	@plant = Plant.find(params[:id])
   end

  private

  def plant_params
    params.require(:plant).permit(:name, :site_id)
  end
end
