class AddPriceToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :price, :integer
  end
end
