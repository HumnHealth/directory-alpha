class PracticesController < ApplicationController
  def index
    @practices = Practice.all
  end

  def show
    @practice = Practice.find(params[:id])
  end

  private
    def practice_params
      params.require(:practice).permit(:name,:email,:phone,:address, :description)
    end
end
