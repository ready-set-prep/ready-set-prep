class SessionsController < ApplicationController
  def create
    @user = User.where(amazon_key: auth_hash).first_or_create! do |u|
      u.amazon_key = @amazon_access_token
      u.email = "whatever@example.com" #FIXME
      u.password = SecureRandom.hex 64
    end
    @user.save
    binding.pry
    sign_in @user
    redirect_to '/'
  end

  protected
  def auth_hash
    @amazon_access_token = params["access_token"]
  end
end
