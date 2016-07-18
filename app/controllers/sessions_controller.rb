class SessionsController < Devise::OmniauthCallbacksController

  def amazon
    data = request.env['omniauth.auth']
    @user = User.where(email: data.info.email).first_or_create! do |u|
    u.email = data.info.email
    u.password = SecureRandom.hex 64
    u.amazon_key = data.credentials.token
      end
    sign_in @user
    redirect_to landingpage_index_path
  end
end
