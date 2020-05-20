class UsersController < ApplicationController
  before_action:set_last_seen_at, if: -> { logged_in? && (current_user.last_seen_at.nil? || current_user.last_seen_at < 15.minutes.ago) }
  before_action:logged_in_user,only:[:index,:edit,:update]
  before_action:correct_user,only:[:edit,:update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) 
    @microposts=@user.microposts.paginate(page: params[:page])
  end
  def new
    @user=User.new
  end
  def create
    @user=User.new(user_params)
      if @user.save
        log_in @user
        flash[:sucess]="You have successfully logged in"  
        redirect_to @user     
      # Handle a successful save.     
    else       
      render 'new'     
    end   
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:mobile)
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger]="Please log in."
      redirect_to login_url
    end
  end
  
def correct_user
  @user=User.find(params[:id])
  redirect_to(root_url)unless current_user?(@user)
end

private
    def set_last_seen_at
      current_user.update_column(:last_seen_at, Time.zone.now)
    end
end
