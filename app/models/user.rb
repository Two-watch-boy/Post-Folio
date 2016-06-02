class User < ActiveRecord::Base
  has_many :projects
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
