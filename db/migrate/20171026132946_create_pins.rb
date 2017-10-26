class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :liens
      t.integer :utilisateur_id
      t.references :commentaire, foreign_key: true

      t.timestamps
    end
  end
end
