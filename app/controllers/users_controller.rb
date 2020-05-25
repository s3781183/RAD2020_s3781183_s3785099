class UsersController < ApplicationController
  before_action:set_last_seen_at, if: -> { logged_in? && (current_user.last_seen_at.nil? || current_user.last_seen_at < 15.minutes.ago) }
  before_action:logged_in_user,only:[:index,:edit,:update,:editPassword,:editVerification]
  # before_action:correct_user,only:[:edit,:update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) 
    @microposts=@user.microposts.all
    @comments=@user.comments.all
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

  def edit
    @user = User.find(params[:id]) 
  end

  def editPassword
    @user = User.find(params[:user_id]) 
  end

  def editVerification
    @user = User.find(params[:user_id]) 
  end

  def editAvatar
    @user = User.find(params[:user_id]) 
  end

  def allUserComment
    @user = User.find(params[:user_id]) 
    @microposts=Micropost.all
    @comments = Comment.all
    render :partial => @micropost.@comment
  end

  def commentToUser
    @user = User.find(params[:user_id]) 
    @microposts=Micropost.all
    @comments = Comment.all
  end

  def update
    @user = User.find(params[:id]) 
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success]="Profile updated"
      redirect_to edit_user_path
      else
        render'edit'
    end
  end

  def myPost
    @user = User.find(params[:user_id]) 
  end
  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:mobile, :card_type, :card_number, :card_image, :picture)
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
