class Preferences < BaseModel
  enum FeedMenu
    Popular
    Trending
    Subscriptions
    Playlists
  end
  enum Comments
    Youtube
    Reddit
  end
  enum PlayerStyle
    Invidious
    Youtube
  end
  enum VideoQuality
    Dash
    Hd720
    Medium
    Small
  end
  table do
    column locale : String
    column captions : Array(String) = ["", "", ""]
    column dark_mode : Bool = false
    column thin_mode : Bool = false
    column feed_menu : Preferences::FeedMenu
    column default_home : Preferences::FeedMenu
    column max_results : Int16 = 40
    column annotations : Bool = false
    column annotations_subscribed : Bool = false
    column comments : Preferences::Comments
    column player_style : Preferences::PlayerStyle
    column related_videos : Bool = true
    column autoplay : Bool = false
    column continue : Bool = false
    column listen : Bool = false
    column video_loop : Bool = false
    column quality : Preferences::VideoQuality
    column quality_dash : String = "auto"
    column speed : Float64 = 1.0
    column volume : Int16 = 100
    column vr_mode : Bool = true
    column latest_only : Bool = false
    column notifications_only : Bool = false
    column unseen_only : Bool = false
    column sort : String = "Published"
    column local : Bool = false
    column show_nick : Bool = true
    column automatic_instance_redirect : Bool = true
  end
end
