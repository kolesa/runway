class TakeoffController < ApplicationController

  def create
    @plane = Plane.find(params[:plane_id])
    @plane.update(status: :waiting)
    ActionCable.server.broadcast 'takeoff_channel', id: 1

    TakeoffWorker.perform_in(@plane.take_off_time.second, @plane.id)

    respond_to do |format|
      format.js { render layout: false }
    end
  end
end
