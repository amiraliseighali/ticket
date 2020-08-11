class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.belongs_to :user
      t.string :location
      t.string :issue
      t.boolean :solved

      t.timestamps
    end
  end
end
