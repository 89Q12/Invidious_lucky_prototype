class Authentication::NewLogin < BrowserAction
  include Auth::RedirectSignedInUsers

  get "/sign_in" do
    html SingIn, operation: SignInUser.new
  end
end
