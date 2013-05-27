class UsersController < ApplicationController
  before_filter :authticate!, only: [:logout, :friends, :del_friend]
  
  def new
    redirect_to User.weibo_client.auth_code.authorize_url
  end

  def callback
    begin
      token = User.weibo_client.auth_code.get_token(params[:code]).to_hash.symbolize_keys
      user = User.find_or_initialize_by(openid: token[:openid])
      user.update_attributes(token)
      sign_in user
      redirect_to :root
    rescue => e
      render json: {success: false, error: e.message}
    end
  end

  def logout
    sign_out current_user
    redirect_to :root
  end

  def friends
    @friends = current_user.get('api/friends/idollist')['data']['info']
  end

  def del_friend
    openid = params[:openid]
    current_user.post('api/friends/del', fopenid: openid)

    redirect_to friends_path
  end

  protected
  def authticate!
    redirect_to :root unless user_signed_in?
  end

end
