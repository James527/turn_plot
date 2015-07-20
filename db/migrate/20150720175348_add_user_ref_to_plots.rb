class AddUserRefToPlots < ActiveRecord::Migration
  def change
    add_reference :plots, :user, index: true, foreign_key: true
  end
end
