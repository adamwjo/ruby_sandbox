class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid

  private

  def render_not_found(error)
    #send json that indicates we couldnt find the thing, along
    #with a the proper status code
    render json: {error: "#{error.model} not found"}, status: :not_found
  end

  def render_invalid(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

end
