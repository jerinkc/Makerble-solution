class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :email
      t.string :full_name
      t.string :phone

      t.timestamps
    end
  end
end
