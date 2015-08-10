class CreateSharedLinks < ActiveRecord::Migration
  def change
    create_table :shared_links do |t|
      t.string :name
      t.string :link

      t.timestamps null: false
    end
  end
end
