class ErrorsController < ActionController::Base
    layout 'error'
   
    def unprocessable_entity
      render status: :unprocessable_entity
    end
   
    def server_error
      render status: :server_error
    end
  end