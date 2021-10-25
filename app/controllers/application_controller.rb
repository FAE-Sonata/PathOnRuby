class ApplicationController < ActionController::Base
    # from https://guides.rubyonrails.org/v4.2.0/action_controller_overview.html#rescue-from
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    # rescue_from ActiveResource::ServerError, with: :server_error

    private

    def record_not_found
        render plain: "404 Not Found", status: 404
    end

    private
    def server_error
        render plain: "500 Internal Server Error", status: 500
    end
end