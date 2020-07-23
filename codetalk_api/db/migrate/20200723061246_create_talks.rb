class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.string :lang
      t.string :lang_version
      t.text :code
      t.text :result
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
