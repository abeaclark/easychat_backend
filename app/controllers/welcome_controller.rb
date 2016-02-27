

class WelcomeController < ApplicationController

  def index
  end

  def calendar
    @shifts = Shift.all
  end
end
