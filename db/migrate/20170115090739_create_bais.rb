class CreateBais < ActiveRecord::Migration[5.0]
  def change
    create_table :bais do |t|
      t.string :name
      t.string :mobile
	 t.string :location
	 t.integer :charges

      t.timestamps
    end
  end
end
