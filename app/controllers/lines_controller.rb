class LinesController < ApplicationController
  def new
  end

   def create
   	# render plain: plant_params.inspect
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "You Signed up successfully"
      # flash[:color]= "valid"
    else
      flash[:error] = "Form is invalid"
      # flash[:color]= "invalid"
    end
    redirect_to @line
   end

   def show
   	@line = Line.find(params[:id])
   end

  private

  def line_params
    params.require(:line).permit(:name, :plant_id)
  end
end
