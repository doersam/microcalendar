# Calendar controller
class CalendarController < ApplicationController
  include GraphHelper

  def index
    @events = get_calendar_events access_token || []
    raise
  # rescue RuntimeError => e
  #   @errors = [
  #     {
  #       message: 'Microsoft Graph returned an error getting events.',
  #       debug: e
  #     }
  #   ]
  end

  def record_db
    #record the NEW events in the db
    # call send_delayed_email
  end

  def send_delayed_email
    #queue in redis cloud the emial
  end
end
