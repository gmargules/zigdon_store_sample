class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
		t.string :details
		t.float :price, default: 0
		t.integer :quantity, default: 0
		t.string :serial
		t.string :image_name

		t.timestamps
    end
  end
end
