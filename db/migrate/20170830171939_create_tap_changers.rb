class CreateTapChangers < ActiveRecord::Migration[5.0]
  def change
    create_table :tap_changers do |t|
      t.string :marca
      t.string :tipo
      t.string :serie
      t.string :num_pasos
      t.belongs_to :phase, foreign_key: true

      t.timestamps
    end
  end
end
