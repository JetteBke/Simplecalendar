class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.string :praxis
      t.string :doctor
      t.string :address
      t.string :website

      t.timestamps
    end
  end
end
