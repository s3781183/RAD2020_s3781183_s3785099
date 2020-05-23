class CommentsController < ApplicationController
    def create 
        @micropost = Micropost.find(params[:micropost_id])
        @comment = @micropost.comments.create(params[:comment].permit(:body))
        @comment.user = current_user
        # redirect_to micropost_path(@micropost)
        respond_to do |format|
        if @comment.save
            format.html { redirect_to @micropost, notice: 'Comment was successfully created.' }
            format.json { render :show, status: :created, location: @comment }
          else
            format.html { render :new }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
          end
        end
    end
  

def destroy 
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
    format.html { redirect_to @micropost, notice: 'Comment was successfully deleted.' }
    format.json { head :no_body }

end
end
end
