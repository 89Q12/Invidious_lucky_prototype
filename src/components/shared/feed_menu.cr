class Shared::FeedMenu < BaseComponent
  needs user : User?

  def render
    div class: "feed-menu" do
      if user.nil?
        a class: "feed-menu-item pure-menu-heading", href: "/feed/popular" do
          text "Popular"
        end
        a class: "feed-menu-item pure-menu-heading", href: "/feed/trending" do
          text "Trending"
        end
      else
      end
    end
  end
end
