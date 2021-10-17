class Authentication::Logout < BrowserAction
  delete "/sign_out" do
    sign_out
    redirect to: Authentication::SignIn::New
  end
end
