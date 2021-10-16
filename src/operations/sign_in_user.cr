class SignInUser < Avram::Operation
  param_key :user
  # You can modify this in src/operations/mixins/user_from_email.cr
  include UserFromuserid

  attribute userid : String
  attribute password : String

  # Run validations and yields the operation and the user if valid
  def run
    user = user_from_userid
    validate_credentials(user)

    if valid?
      user
    else
      nil
    end
  end

  # `validate_credentials` determines if a user can sign in.
  #
  # If desired, you can add additional checks in this method.
  private def validate_credentials(user)
    if user
      unless Authentic.correct_password?(user, password.value.to_s)
        password.add_error "is wrong"
      end
    end
  end
end
