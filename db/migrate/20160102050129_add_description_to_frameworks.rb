class AddDescriptionToFrameworks < ActiveRecord::Migration
  def change
    add_column :frameworks, :description, :string
  end
end
