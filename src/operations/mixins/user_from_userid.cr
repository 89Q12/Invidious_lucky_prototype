module UserFromuserid
  private def user_from_userid : User?
    userid.value.try do |value|
      UserQuery.new.userid(value).first?
    end
  end
end
