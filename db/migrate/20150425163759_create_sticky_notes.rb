class CreateStickyNotes < ActiveRecord::Migration
  def change
    create_table :sticky_notes do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
