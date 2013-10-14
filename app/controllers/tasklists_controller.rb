class TasklistsController < ApplicationController
  def index
  	@tasklists = Tasklist.all
  end

  def new
  	@tasklist = Tasklist.new
  end

  def create 
  	@tasklist = Tasklist.new(tasklist_params)
  	if @tasklist.save
  		redirect_to tasklists_path
  	else
  		render "new"
  	end
  end

  def tasklist_params
    params.require(:tasklist).permit(:title, :user_id)
  end

  def edit
  	@tasklist = Tasklist.find(params[:id])
  end

  def show
  	@tasklist = Tasklist.find(params[:id])
  end

  def update 
  	@tasklist = Tasklist.find(params[:id])
  	if @tasklist.update_attributes(params[:tasklist_params])
  		redirect_to tasklist_path(@tasklist.id)
  	else
  		render "edit"
  	end
  end

  def destroy
  	@tasklist = Tasklist.find(params[:id])
  	@tasklist.destroy
  	redirect_to tasklists_path
  end
  
end
