class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.string :reason_for_leave
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
