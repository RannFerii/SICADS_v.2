class CreateBays < ActiveRecord::Migration[5.0]
  def change
    create_table :bays do |t|
      t.string :nomenclatura
      t.references :substation, foreign_key: true
      t.references :battery_bank, foreign_key: true
      t.references :reactor, foreign_key: true
      t.references :transformer, foreign_key: true
      t.references :switch, foreign_key: true
      t.references :lightning_arrester, foreign_key: true

      t.timestamps
    end
  end
end
