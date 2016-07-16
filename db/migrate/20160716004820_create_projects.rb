class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :client
      t.string :job_type
      t.text :description
      t.integer :price_in_cents
      t.string :file

      t.timestamps
    end
  end
end
