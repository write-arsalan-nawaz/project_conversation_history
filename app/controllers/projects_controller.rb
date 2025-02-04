class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update_status]

  def index
    @projects = Project.all.order(created_at: :desc)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project created successfully"
      redirect_to @project
    else
      flash[:alert] = "Failed to create project"
      render :new
    end
  end

  def show
    @comments = @project.comments.order(created_at: :desc)
  end

  def update_status
    if @project.update(status: params[:status])
      flash[:notice] = "Project status updated successfully"
      redirect_to project_path(@project)
    else
      flash[:alert] = "Failed to update project status"
      redirect_to project_path(@project)
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :status)
  end
end
