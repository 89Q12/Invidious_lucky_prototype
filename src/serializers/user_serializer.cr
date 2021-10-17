class UserSerializer < BaseSerializer
  def initialize(@user : User)
  end

  def render
    {userid: @user.userid}
  end
end
