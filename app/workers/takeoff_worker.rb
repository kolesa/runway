require 'redis'

class TakeoffWorker
  include Sidekiq::Worker

  def perform(plane_id)
    plane = Plane.find(plane_id)
    plane.update(status: :fly)
    ActionCable.server.broadcast 'takeoff_channel', id: plane_id
  end
end