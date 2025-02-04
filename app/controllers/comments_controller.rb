class CommentsController < ApplicationController
    def create
        @project = Project.find(params[:project_id])
        @comment = @project.comments.new(comment_params)

        if @comment.save
            flash[:notice] = "Comment created successfully"
        else
            flash[:alert] = "Failed to create comment"
        end
        redirect_to project_path(@project)
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :user_name)
    end
end
