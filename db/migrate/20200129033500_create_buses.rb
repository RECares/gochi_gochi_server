class CreateBuses < ActiveRecord::Migration[6.0]
  def change
    create_table :buses do |t|

      t.timestamps null: false
    end
  end
end
