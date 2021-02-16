class AddActive < ActiveRecord::Migration
  def change
    add_column :students, :active, false
    end
  end
end