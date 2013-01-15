class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :complement
      t.string :cp
      t.string :ville
      t.string :email
      t.string :fixe
      t.string :mobile
      t.string :etat
      t.string :commercial
      t.text :commentaire

      t.timestamps
    end
  end
end
