class CreateFrameworks < ActiveRecord::Migration
  def change
    create_table :frameworks do |t|
      t.string :name
      t.string :author
      t.string :link_to_original

      t.timestamps null: false
    end
  end
end
