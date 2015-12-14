class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    set_meta_tags title: @doctor.name, description: @doctor.speciality+", "+@doctor.practice.name+", "+@doctor.practice.street+", "+@doctor.practice.city+", "+@doctor.practice.postal+", "+@doctor.description, keywords: 'Health, Doctors, Medicine, NHS, Telemedicine'
  end

  private
    def doctor_params
      params.require(:doctor).permit(:name,:email,:phone,:address, :description, :image)
    end
end
