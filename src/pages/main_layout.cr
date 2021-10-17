abstract class MainLayout
  include Lucky::HTMLPage

  # 'needs current_user : User' makes it so that the current_user
  # is always required for pages using MainLayout
  needs current_user : User
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
          div class: "pure-u-1 pure-u-md-2-24", id: "contents" do
            mount Shared::Navbar, user: current_user, darktheme: false
            unless banner
              div class: "h-box" do
                h3 banner
              end
            end
            main do
              div class: "pure-u-1 pure-u-md-20-24" do
                content
              end
            end
            footer do
              div class: "pure-g" do
                mount Shared::Footer, modified_source_code_url: modified_source_code_url, version_string: version_string
              end
            end
          end
          div class: "pure-u-1 pure-u-md-2-24"
        end
      end
    end
  end
end
