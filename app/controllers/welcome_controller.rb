

class WelcomeController < ApplicationController

  def index
    current_user
  end

  def calendar
    current_user
    @shifts = Shift.all
  end
end
