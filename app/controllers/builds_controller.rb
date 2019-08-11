class BuildsController < ApplicationController
  before_action :set_build, only: %i[show edit update destroy]

  def index
    @builds = Build.search(params[:search])
  end

  def show
    @combination = Combination.new
  end

  def new
    @build = Build.new
  end

  def create
    @build = Build.new(build_params)
    if @build.save
      redirect_to build_path(@build)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @build.update(build_params)
    if @build.save
      redirect_to build_path(@build)
    else
      render :edit
    end
  end

  def destroy
    @build.destroy
    redirect_to builds_path
  end

  private

  def set_build
    @build = Build.find(params[:id])
  end

  def build_params
    params.require(:build).permit(:name, :description, :search)
  end
end
