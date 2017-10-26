class CreateCommentaires < ActiveRecord::Migration[5.1]
  def change
    create_table :commentaires do |t|
      t.integer :pin_id
      t.integer :utilisateur_id
      t.text :contenu

      t.timestamps
    end
  end
end
