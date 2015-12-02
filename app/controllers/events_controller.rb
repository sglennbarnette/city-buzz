class EventsController < ApplicationController

before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @events = Event.all
  end

  def show
  end

  def edit
  end

  def new
    @event = Event.new
  end

  def _form
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to root_path, notice: 'Event was sucessfully posted.' }
      else 
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was sucessfully updated'}
      else
        format.html ( render :edit)
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to event_url, notice: 'Event was sucessfully destroyed'}
    end
  end

private

def set_event
  @event = Event.find(params[:id])
end

def event_params
  params.require(:event).permit(:message, :user_id)
end


end
