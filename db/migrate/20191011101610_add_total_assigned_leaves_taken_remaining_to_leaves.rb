class AddTotalAssignedLeavesTakenRemainingToLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :leaves, :total_assigned_leaves, :string
    add_column :leaves, :taken, :string
    add_column :leaves, :remaining, :string
  end
end
