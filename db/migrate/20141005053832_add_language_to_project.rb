class AddLanguageToProject < ActiveRecord::Migration
  def change
    add_column :projects, :language, :string
  end
end
