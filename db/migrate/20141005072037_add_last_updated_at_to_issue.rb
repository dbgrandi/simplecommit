class AddLastUpdatedAtToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :last_updated_at, :timestamp
  end
end
