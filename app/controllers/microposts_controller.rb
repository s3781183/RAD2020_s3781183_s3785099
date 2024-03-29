class MicropostsController < ApplicationController
  before_action :set_micropost, only: [:show, :edit, :update, :destroy]

  # GET /microposts
  # GET /microposts.json
  def index
    @microposts = Micropost.all
    @users= User.all

  end

  # GET /microposts/1
  # GET /microposts/1.json
  def show
    @micropost.view += 1
    @recentUsers = User.where("last_active > ?", 30.days.ago).limit(12)
    @microposts = Micropost.all
    @micropost.save
  end



  # GET /microposts/new
  def new
    @micropost = Micropost.new
    # @user = User.find(params[:id]) 
  end

  # GET /microposts/1/edit
  def edit
  end

  # POST /microposts
  # POST /microposts.json
  def create
    @micropost = Micropost.new(micropost_params)
    @micropost.user = current_user
    respond_to do |format|
      if @micropost.save
        format.html { redirect_to @micropost, notice: 'Micropost was successfully created.' }
        format.json { render :show, status: :created, location: @micropost }
      else
        format.html { render :new }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposts/1
  # PATCH/PUT /microposts/1.json
  def update
    respond_to do |format|
      if @micropost.update(micropost_params)
        format.html { redirect_to @micropost, notice: 'Micropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropost }
      else
        format.html { render :edit }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    @micropost.destroy
    respond_to do |format|
      format.html {redirect_to user_myPost_path(@micropost.user), notice: 'Micropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost
      @micropost = Micropost.find(params[:id])
    end

   

    private
    # Only allow a list of trusted parameters through.
    def micropost_params
      params.require(:micropost).permit(:title,:topic,:content, :user_id)
    end
end
