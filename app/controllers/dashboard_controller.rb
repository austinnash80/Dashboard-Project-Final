class DashboardController < ApplicationController
  def home
      @notes = Note.all
  end

end
