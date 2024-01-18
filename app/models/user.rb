class User < ActionAuth::User
  has_one :user_setting, dependent: :destroy

  delegate :admin?, to: :user_setting

  def user_setting
    super || create_user_setting
  end
end
