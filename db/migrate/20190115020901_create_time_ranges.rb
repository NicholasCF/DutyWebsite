class CreateTimeRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :time_ranges do |t|
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
