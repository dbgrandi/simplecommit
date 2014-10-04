class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :color
      t.string :name

      t.timestamps
    end
  end
end
