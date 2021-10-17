class Authentication::Logout < BrowserAction
  delete "/sign_out" do
    sign_out
    Authentic.redirect_to_originally_requested_path(self, fallback: Feed::Index)
  end
end
