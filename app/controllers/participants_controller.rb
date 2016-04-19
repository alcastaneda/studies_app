class ParticipantsController < ApplicationController
 def index
  @participants = Participant.all
  @participant = Participant.new
 end

 def show
    @participants = Participants.find(params[:id])
  end

  def new
    @participants= Participant.new
  end

  def create
    @participants = Participant.new(participants_params)
    if @participants.save
        redirect_to participants_path
    else
      render :new
    end
  end

    private
      def participants_params
        params.require(:participant).permit(:name, :gender, :birthdate, :address)
      end
end
