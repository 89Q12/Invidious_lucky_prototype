class Authentication::NewUser < BrowserAction
  include Auth::RedirectSignedInUsers

  get "/sign_up" do
    html Authentication::SignUp, operation: SignUpUser.new
  end
end
