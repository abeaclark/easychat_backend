

class WelcomeController < ApplicationController
  protect_from_forgery except: :widget
  def index
    current_user
  end

  def calendar
    current_user
    @shifts = Shift.all
  end

  def widget
    respond_to do |format|
      format.js { render "widget", formats: [:js] }
      # deliver the rendered events as JSONP response to the widget
      # format.json {
      #   search = Search.new(q: params[:q], per: params[:limit])
      #   render json: search.events, callback: params[:callback]
      # }
    end
  end

end
