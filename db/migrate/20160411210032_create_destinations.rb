class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :url_path

      t.timestamps null: false
    end
  end
end
