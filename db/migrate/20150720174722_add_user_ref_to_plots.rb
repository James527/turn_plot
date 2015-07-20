class AddUserRefToPlots < ActiveRecord::Migration
  def change
    add_reference :plots, :u_id, index: true, foreign_key: true
  end
end
