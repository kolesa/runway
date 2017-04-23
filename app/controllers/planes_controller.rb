class PlanesController < ApplicationController
  def index
    @planes_in_hangar = Plane.in_hangar
    @waiting_planes   = Plane.waiting
  end
end
