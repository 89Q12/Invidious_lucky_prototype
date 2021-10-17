abstract class AuthLayout
  include Lucky::HTMLPage

  needs dark_mode : String = "dark"
  needs banner : String = ""
  needs assert_commits : String
  needs version_string : String
  needs modified_source_code_url : String

  abstract def content
  abstract def page_title

  def render
    html_doctype

    html lang: "en" do
      mount Shared::LayoutHead, assert_commits: assert_commits, page_title: page_title

      body class: "#{dark_mode}-theme" do
        div class: "pure-g" do
          div class: "pure-u-1 pure-u-md-2-24"
          div class: "pure-u-1 pure-u-md-20-24", id: "contents" do
            mount Shared::Navbar, darktheme: false
            unless banner
              div class: "h-box" do
                h3 banner
              end
            end
            content
            mount Shared::Footer, modified_source_code_url: modified_source_code_url, version_string: version_string
          end
          div class: "pure-u-1 pure-u-md-2-24"
        end
      end
    end
  end
end
