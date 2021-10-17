class Authentication::CreateUser < BrowserAction
  include Auth::RedirectSignedInUsers

  post "/sign_up" do
    SignUpUser.create(params) do |operation, user|
      if user
        flash.info = "Thanks for signing up."
        redirect Feed::Index
      else
        flash.info = "Couldn't sign you up"
        html Authentication::SignUp, operation: operation, assert_commits: "", modified_source_code_url: "modified_source_code_url", version_string: "version_string"
      end
    end
  end
end
