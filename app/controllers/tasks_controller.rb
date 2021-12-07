class TasksController < ApplicationController

before_action :set_task, except: [:index, :new, :create]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:details])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:details])
  end

  def update
    @task = Task.find(params[:details])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:details])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
