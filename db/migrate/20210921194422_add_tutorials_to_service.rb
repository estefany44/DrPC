class AddTutorialsToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :tutorials, :string
  end
end
