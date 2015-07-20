class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
    	t.text null: false, default: "<p>Hello World!</p>"
    	t.boolean :active_plot, default: false

		t.timestamps null: false
    end
  end
end
