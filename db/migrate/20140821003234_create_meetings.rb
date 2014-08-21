class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.float :business_checking
      t.float :personal_checking
      t.float :bank_balance
      t.float :revenue
      t.float :hours
      t.integer :shifts
      t.float :labor_percent
      t.integer :leads
      t.integer :closes
      t.float :debt_payoff
      t.float :yelp_average
      t.integer :yelp_average
      t.integer :yelp_amount
      t.integer :yelp_one
      t.integer :yelp_two
      t.integer :yelp_three
      t.integer :yelp_four
      t.integer :yelp_five
      t.boolean :tax_is_paid
      t.float :tax_amount

      t.timestamps
    end
  end
end
