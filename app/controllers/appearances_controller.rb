class AppearancesController < ApplicationController

def index
   @appearances = Appearance.all
 end

 def new
 @appearance = Appearance.new
 end

 def create
   @appearance = Appearance.create(appearance_params)
   redirect_to appearance_path(@appearance)
 end

 def show
   @appearance = Appearance.find(params[:id])
 end

 def edit
   @appearance = Appearance.find(params[:id])
 end

 def update
   @appearance = Appearance.find(params[:id])
   @appearance.update(appearance_params)
   redirect_to appearance_path(@appearance)
 end

def destroy
  Appearance.find(params[:id]).destroy
  redirect_to appearance_path
end

private

 def appearance_params
   params.require(:id).permit(:guest_id, :episode_id, :guest_rating)
   #params.permit(:guest_id, :episode_id, :guest_rating)
 end

end
