class Feed::Popular < BrowserAction
  get "/feed/popular" do
    html Feed::IndexPage, assert_commits: "test", darktheme: "dark", modified_source_code_url: "modified_source_code_url", version_string: "version_string"
  end
end
