class AddInkBalanceToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :ink_balance, :float
  end
end
