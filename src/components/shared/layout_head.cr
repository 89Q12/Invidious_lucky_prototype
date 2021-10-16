class Shared::LayoutHead < BaseComponent
  needs page_title : String
  needs assert_commits : String

  def render
    head do
      utf8_charset
      meta name: "viewport", content: "width=device-width, initial-scale=1"
      title "#{Application.settings.name} - #{@page_title}"
      css_link asset("css/app.css"), data_turbolinks_track: "reload"
      js_link asset("js/app.js"), defer: "true", data_turbolinks_track: "reload"
      meta name: "turbolinks-cache-control", content: "no-cache"
      meta name: "theme-color", content: "#575757"
      meta name: "msapplication-TileColor", content: "#575757"
      empty_link "Invidious", type: "application/opensearchdescription+xml", rel: "search", href: "/opensearch.xml"
      empty_link rel: "apple-touch-icon", sizes: "180x180", href: "/apple-touch-icon.png?v=#{@assert_commits}"
      empty_link rel: "icon", type: "image/png", sizes: "32x32", href: "/favicon-32x32.png?v=#{@assert_commits}"
      empty_link rel: "icon", type: "image/png", sizes: "16x16", href: "/favicon-16x16.png?v=#{@assert_commits}"
      empty_link rel: "manifest", href: "/site.webmanifest?v=#{@assert_commits}"
      empty_link rel: "mask-icon", href: "/safari-pinned-tab.svg?v=#{@assert_commits}", color: "#575757"
      csrf_meta_tags
      responsive_meta_tag
    end
  end
end
