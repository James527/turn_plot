class CreateCorrespondents < ActiveRecord::Migration
  def change
    create_table :correspondents do |t|

      t.timestamps null: false
    end
  end
end
