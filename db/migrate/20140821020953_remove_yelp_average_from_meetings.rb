class RemoveYelpAverageFromMeetings < ActiveRecord::Migration
  def change
    remove_column :meetings, :yelp_average, :integer
  end
end
