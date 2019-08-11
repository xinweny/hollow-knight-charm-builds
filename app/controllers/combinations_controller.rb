class CombinationsController < ApplicationController
  before_action :set_build, only: %i[new create]

  def new
    @combination = Combination.new
  end

  def create
    @combination = Combination.new(combination_params)
    @combination.build = @build
    if @combination.save
      redirect_to build_path(@build)
    else
      render 'builds/show'
    end
  end

  def destroy
    @combination = Combination.find(params[:id])
    @combination.destroy
    redirect_to build_path(@combination.build)
  end

  private

  def set_build
    @build = Build.find(params[:build_id])
  end

  def combination_params
    params.require(:combination).permit(:build_id, :charm_id)
  end
end
