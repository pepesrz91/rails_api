class UserEventsController < ApplicationController

  def event_handler
    puts params
    render json: "Hello", status: :ok
  end
end
