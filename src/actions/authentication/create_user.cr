class Authentication::CreateUser < BrowserAction
  include Auth::RedirectSignedInUsers

  post "/sign_up" do
    SignUpUser.create(params) do |operation, user|
      if user
        flash.info = "Thanks for signing up."
        redirect Authentication::SignIn
      else
        flash.info = "Couldn't sign you up"
        html Authentication::SinUp, operation: operation
      end
    end
  end
end
