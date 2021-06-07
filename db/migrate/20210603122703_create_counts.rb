class CreateCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :counts do |t|
      t.integer :step
      t.date :date

      t.timestamps
    end
  end
end
