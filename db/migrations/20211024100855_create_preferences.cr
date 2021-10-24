class CreatePreferences::V20211024100855 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Preferences) do
      primary_key id : UUID
      add_timestamps
      add locale : String
      add captions : Array(String) = ["", "", ""]
      add dark_mode : Bool = false
      add thin_mode : Bool = false
      add feed_menu : Int32
      add default_home : Int32
      add max_results : Int16 = 40
      add annotations : Bool = false
      add annotations_subscribed : Bool = false
      add comments : Int32
      add player_style : Int32
      add related_videos : Bool = true
      add autoplay : Bool = false
      add continue : Bool = false
      add listen : Bool = false
      add video_loop : Bool = false
      add quality : Int32
      add quality_dash : String = "auto"
      add speed : Float64 = 1
      add volume : Int16 = 100
      add vr_mode : Bool = true
      add latest_only : Bool = false
      add notifications_only : Bool = false
      add unseen_only : Bool = false
      add sort : String = "Published"
      add local : Bool = false
      add show_nick : Bool = true
      add automatic_instance_redirect : Bool = true
    end
  end

  def rollback
    drop table_for(Preferences)
  end
end
