class RollbarRubyDemoController < ApplicationController
  def index
    #Sentry.capture_message("Ruby Test Message")
    Rollbar.info('Ruby Test Message')
    begin
      #Test Comment
      #Test Comment
      5456487 / 0
      #Test Comment
      #Test Comment
    rescue ZeroDivisionError => exception
      #  Sentry.capture_exception(exception)
      Rollbar.error(exception)
    end
  end
end
