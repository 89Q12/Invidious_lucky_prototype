class Shared::Navbar < BaseComponent
  needs user : User?
  needs search : String?
  needs darktheme : Bool?

  def render
    div class: "pure-g navbar h-box" do
      render_left_navbar(search)
      render_right_navbar(user, darktheme)
    end
  end

  private def render_left_navbar(search : String | Nil)
    div class: "pure-u-1 pure-u-md-4-24" do
      render_logo
    end
    div class: "pure-u-1 pure-u-md-12-24 searchbar" do
      form(methode: "get", class: "pure-form", action: "/search") do
        fieldset do
          input(type: "text", value: "#{search}", name: "q", style: "width:100%;", attrs: [:required])
        end
      end
    end
  end

  private def render_logo
    link "Invidious Lucky Prototype", to: Feed::Index, class: "index-link pure-menu-heading"
  end

  private def render_right_navbar(user : User, dark_theme : Bool | Nil)
    div class: "pure-u-1 pure-u-md-8-24 user-field" do
      div class: "pure-u-1-4" do
        a id: "toggle_theme", href: "/toggle_theme?referer=", class: "pure-menu-heading" do
          if dark_theme
            i class: "icon ion-ios-sunny"
          else
            i class: "icon ion-ios-moon"
          end
        end
      end
    end
    div class: "pure-u-1-4" do
      a class: "pure-menu-heading", title: "Subscriptions", id: "notification_ticker" do
        unless user.nil?
          notification_count = user.notifications.size
          if notification_count > 0
            div id: "notification_count" do
              text notification_count
            end
            i class: "icon ion-ios-notifications"
          else
            i class: "icon ion-ios-notifications-outline"
          end
        end
      end
    end
    div class: "pure-u-1-4" do
      link("Log Out", to: Authentication::Logout, flow_id: "nav-sign-out-button")
    end
  end

  private def render_right_navbar(no_user : Nil, dark_theme : Bool | Nil)
    div class: "pure-u-1 pure-u-md-8-24 user-field" do
      div class: "pure-u-1-4" do
        a id: "toggle_theme", href: "/toggle_theme?referer=", class: "pure-menu-heading" do
          if dark_theme
            i class: "icon ion-ios-sunny"
          else
            i class: "icon ion-ios-moon"
          end
        end
      end
      div class: "pure-u-1-4" do
        link("Login", to: Authentication::NewLogin, flow_id: "nav-sign-in-button")
      end
    end
  end
end
