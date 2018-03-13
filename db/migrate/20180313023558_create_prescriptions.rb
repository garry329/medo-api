class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.text :description
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end
