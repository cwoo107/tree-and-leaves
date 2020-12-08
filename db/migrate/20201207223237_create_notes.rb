class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.references :folderable, polymorphic: true, null: true

      t.timestamps
    end
  end
end
