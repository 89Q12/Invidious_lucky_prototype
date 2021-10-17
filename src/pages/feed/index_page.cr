class Feed::IndexPage < MainLayout
  def page_title
    "Invidous"
  end

  def content
    mount Shared::FeedMenu
    div class: "pure-g" do
      mount Shared::CardVideo
    end
  end
end
