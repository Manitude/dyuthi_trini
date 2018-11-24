class TagsController < ApplicationController
  def new
  end

  def index
  	@tags = Tag.all
  end

   def create
   	# render plain: tag_params.inspect
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = "You Signed up successfully"
      # flash[:color]= "valid"
    else
      flash[:error] = "Form is invalid"
      # flash[:color]= "invalid"
    end
    redirect_to @tag
   end

   def show
   	@tag = Tag.find(params[:id])
   end

  private

  def tag_params
    params.require(:tag).permit(:name, :asset_id)
  end
end
