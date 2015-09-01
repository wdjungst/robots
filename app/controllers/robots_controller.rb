class RobotsController < ApplicationController
  def show
    @robot = Robot.find(params[:id])
  end

  def index
  	@robots = Robot.all.by_created_at
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(killer: false)
    if @robot.update(robot_params)
    	redirect_to robot_path(@robot)
    else
    	render :new
    end
  end

  def edit
  	@robot = Robot.find(params[:id])
  end

  def update
  	robot = Robot.find(params[:id])
    if robot.update(robot_params)
      redirect_to robot_path(robot)
    else
      render :edit
    end
  end

  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy
    redirect_to robots_path
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :country_of_origin, :function, :serial_number)
  end
end
