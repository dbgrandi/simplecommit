class AddProjectHasManyIssues < ActiveRecord::Migration
  def change
    add_reference :issues, :project, index: true
  end
end
