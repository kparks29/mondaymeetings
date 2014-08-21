class AddAmountSpentToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :amount_spent, :float
  end
end
