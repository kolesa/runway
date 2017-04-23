class HistoryController < ApplicationController
  def index
    @change_history = PaperTrail::Version.includes(:item).all
  end
end
