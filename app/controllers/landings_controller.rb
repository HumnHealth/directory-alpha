class LandingsController < ApplicationController
  layout 'empty'

  def index
  end

  def team
  end

  def carehomes
  end

  def motherbaby
  end

  def doctors
  end

  private
    def landing_params
      # params.require(:doctor).permit(:name,:email,:phone,:address, :description, :image)
    end
end
