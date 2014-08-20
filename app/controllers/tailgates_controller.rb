class TailgatesController < ApplicationController

  def index
    @params = params
  end

  def new
    @tailgate = Tailgate.new
  end

  def create
    #params.permit!
    @school = School.find_by(name: params[:school]).id
    @tailgate = Tailgate.new(name: params[:name], latlng: params[:latlng], description: params[:description], location: params[:location], school_id: @school)    
    @tailgate.save
    tid = @tailgate.id
    redirect_to "/tailgates/#{tid}"
  end

  def view
    
  end

  def show
    @tailgate = Tailgate.find(params[:id])
    @school = School.find(@tailgate.school_id)
  end

  private

  # def tailgate_params
  #   params.require(:tailgate).permit(:name, :latlng, :location, :description)
  # end



end
