class AddPhotosToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :photos, :integer
    add_column :meetings, :fb_posts, :integer
  end
end
