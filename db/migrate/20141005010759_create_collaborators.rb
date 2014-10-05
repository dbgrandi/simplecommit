class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
