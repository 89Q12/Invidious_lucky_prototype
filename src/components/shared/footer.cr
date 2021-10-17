class Shared::Footer < BaseComponent
  needs modified_source_code_url : String
  needs version_string : String

  def render
    footer do
      div class: "pure-g" do
        source_code(modified_source_code_url)
        license
        version(version_string)
      end
    end
  end

  def source_code(url : String)
    div class: "pure-u-1 pure-u-md-1-3" do
      span do
        i class: "icon ion-logo-github"
        a href: "https://github.com/iv-org/invidious" do
          text "Source code"
        end
        a href: url do
          text "Modifed source code"
        end
      end
      span do
        i class: "icon ion-ios-paper"
        a href: "https://github.com/iv-org/documentation" do
          text "Documentation"
        end
      end
    end
  end

  def source_code(url : Nil)
    div class: "pure-u-1 pure-u-md-1-3" do
      span do
        i class: "icon ion-logo-github"
        a href: "https://github.com/iv-org/invidious" do
          text "Source code"
        end
      end
      span do
        i class: "icon ion-ios-paper"
        a href: "https://github.com/iv-org/documentation" do
          text "Documentation"
        end
      end
    end
  end

  def license
    div class: "pure-u-1 pure-u-md-1-3" do
      span do
        a href: "https://github.com/iv-org/invidious/blob/master/LICENSE" do
          text "Released under the AGPLv3 on Github."
        end
      end
      span do
        i class: "icon ion-logo-javascript"
        link "View JavaScript license information.", Feed::JsLincense
      end
      span do
        i class: "icon ion-ios-paper"
        link "View privacy policy.", Feed::Privacy
      end
    end
  end

  def version(version : String)
    div class: "pure-u-1 pure-u-md-1-3" do
      span do
        i class: "icon ion-ios-wallet"
        a href: "https://invidious.io/donate/" do
          text "Donate"
        end
      end
      text "Current version:" + version
    end
  end
end
