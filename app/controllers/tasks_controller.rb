class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /tasks
  # GET /tasks.json

  def index
    @title = "Today Task"
    @tasks = Task.where(status: :false).order(priority: :asc).order(filter_param).where("DATE(due_date) = DATE(?)", Time.now)
    @tasks = @tasks.paginate(per_page: 5, page: params[:page])
    render 'index'
  end

  def completed
    @title = "Completed Task"
    @tasks = Task.where(status: 1).order(filter_param).paginate(per_page: 5, page: params[:page])
    render 'index'
  end

  def queue
    @title = "Queue Task"
    @tasks = Task.where(status: 0).order(filter_param).where("DATE(due_date) != DATE(?)", Time.now)
    @tasks = @tasks.paginate(per_page: 5, page: params[:page])
    render 'index'
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def filter_param
    param = Hash.new   
    if params.has_key?("filter")
      key = params[:filter]

      if params[:filter] == "due_date"
        param[key] = 'desc'
      else
        param[key] = 'asc'
      end
    end
    
    return param
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:task_name, :description, :priority, :due_date, :status)
    end
end