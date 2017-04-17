class UsersController < ApplicationController

def index
   @users = Users.all
 end

 def new
 @user = Users.new
 end

 def create
   @user = Users.create(guest_params)
   redirect_to guest_path(@user)
 end

# def create #create method including validation...
#   @user = Users.new(guest_params)
#   if @user.valid?
#    @user.save # This returns a status_code of 302, which instructs the browser to perform a new request
#    redirect_to guest_path(@user)
#   else
#    render :new
#   end #end if else statement
# end

 def show
   @user = Users.find(params[:id])
 end

 def edit
   @user = Users.find(params[:id])
 end

 def update
   @user = Users.find(params[:id])
   @user.update(guest_params)
   redirect_to guest_path(@user)
 end

# def update #update method including validation...
#   @user.update(guest_params)
#   if @user.valid?
#    @song.save # This returns a status_code of 302, which instructs the browser to perform a new request
#    flash[:success] = "Users updated" #can get rid of this line
#    redirect_to guest_path(@song)
#   else
#    render :edit
#   end #end if...else statement
# end

def destroy
  Users.find(params[:id]).destroy
  redirect_to guests_path
end

private

 def user_params
   params.require(:id).permit(:password, :password_confirmation)
 end


end
