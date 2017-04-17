class GuestsController < ApplicationController

def index
   @guests = Guest.all
 end

 def new
 @guest = Guest.new
 end

 def create
   @guest = Guest.create(guest_params)
   redirect_to guest_path(@guest)
 end

 def show
   @guest = Guest.find(params[:id])
 end

 def edit
   @guest = Guest.find(params[:id])
 end

 def update
   @guest = Guest.find(params[:id])
   @guest.update(guest_params)
   redirect_to guest_path(@guest)
 end

def destroy
  Guest.find(params[:id]).destroy
  redirect_to guests_path
end

private

 def guest_params
   params.require(:id).permit(:name, :occupation)
 end


end
