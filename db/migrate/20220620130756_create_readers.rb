class CreateReaders < ActiveRecord::Migration[7.0]
  def change
    create_table :readers do |t|
      t.string :name
      t.references :story, null: false, foreign_key: true

      t.timestamps
    end
  end
end
