class AddProjectHasManyLabels < ActiveRecord::Migration
  def change
    add_reference :labels, :project, index: true
  end
end
