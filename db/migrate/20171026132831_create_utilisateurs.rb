class CreateUtilisateurs < ActiveRecord::Migration[5.1]
  def change
    create_table :utilisateurs do |t|
      t.string :nom
      t.references :pin, foreign_key: true
      t.references :commentaire, foreign_key: true

      t.timestamps
    end
  end
end
