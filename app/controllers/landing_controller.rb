class LandingController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end

  private

    def set_project
      @project = Project.find(params[:id])

    end


end
