class RsvpsController < ApplicationController

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(params[:rsvp])
    if @rsvp.save
      redirect_to "/rsvps/#{@rsvp.id}"
    else
      render :new      
    end
  end

  def show
    @rsvp = Rsvp.find_by(id:params[:id])
  end

  def edit
    @rsvp = Rsvp.find_by(id:params[:id])
  end

  def destroy
    Rsvp.find_by(id:params[:id]).destroy
    redirect_to '/rsvps/'
  end
end
