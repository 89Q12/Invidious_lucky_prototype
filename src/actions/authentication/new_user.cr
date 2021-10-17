class Authentication::NewUser < BrowserAction
  include Auth::RedirectSignedInUsers

  get "/sign_up" do
    html Authentication::SignUp, operation: SignUpUser.new, assert_commits: "", modified_source_code_url: "modified_source_code_url", version_string: "version_string"
  end
end
