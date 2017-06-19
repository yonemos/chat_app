class TopController < ApplicationController
  def index
    @comment = Comment.new(user_id: current_user.id)
    @comments = Comment.all
  end
  def create
    @comment =Comment.new(comment_params)
  
    respond_to do |format|
      if @comment.save
        format.html { redirect_to top_index_path, notice: 'Entry was successfully created.' }
      else
        #to do
      end
    end  
  end
  
  def comment_params
    params.require(:comment).permit(:user_id, :content)
  end
end
