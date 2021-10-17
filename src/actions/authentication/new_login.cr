class Authentication::NewLogin < BrowserAction
  include Auth::RedirectSignedInUsers

  get "/sign_in" do
    html Authentication::SignIn, operation: SignInUser.new, assert_commits: "", modified_source_code_url: "modified_source_code_url", version_string: "version_string"
  end
end
