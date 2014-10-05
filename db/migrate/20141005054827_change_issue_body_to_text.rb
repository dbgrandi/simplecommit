class ChangeIssueBodyToText < ActiveRecord::Migration
  def change
    change_column :issues, :body, :text
  end
end
