class AddYelpAverageToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :yelp_average, :float
  end
end
