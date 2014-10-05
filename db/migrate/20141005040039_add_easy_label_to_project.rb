class AddEasyLabelToProject < ActiveRecord::Migration
  def change
    add_column :projects, :easy_label, :integer
  end
end
