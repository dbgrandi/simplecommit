class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :number
      t.string :state
      t.string :title
      t.string :body
      t.datetime :opened_at
      t.string :url

      t.timestamps
    end
  end
end
