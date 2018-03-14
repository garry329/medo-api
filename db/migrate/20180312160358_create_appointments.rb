class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :schedule
      t.references :user, foreign_key: true
      t.references :doctor, foreign_key: true
      t.text :comments
      t.boolean :cancelled

      t.timestamps
    end
  end
end
