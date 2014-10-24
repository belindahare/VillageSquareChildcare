class RoomsController < ApplicationController
  before_action :find_room, only: [:show, :edit, :update, :destroy]
  def index
    @rooms = Room.all
  end
  def show 
  end
  def new 
    @room = Room.new
  end
  def create
    @room = Room.create
      redirect_to rooms_path
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private
  def room_params
    params.require(:room)
    .permit(:name, :teacher)
  end
  def find_room
    @room = Room.find params[:id]
  end
end
