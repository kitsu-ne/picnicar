class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :kana_first, :kana_last, :phone_number, :vibe_id, :food_id, :drink_id, :birth_date, :prefecture_id])
  end

end
