class LandingsController < ApplicationController
  layout 'empty'

  def index
  end

  def carehome
  end

  def motherbaby
  end

  def doctordirectory
  end

  private
    def landing_params
      # params.require(:doctor).permit(:name,:email,:phone,:address, :description, :image)
    end
end
