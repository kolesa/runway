class TakeoffChannel < ApplicationCable::Channel
  def subscribed
    stream_from "takeoff_channel"
  end
end