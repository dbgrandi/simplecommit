class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :issue, index: true
      t.references :label, index: true

      t.timestamps
    end
  end
end
