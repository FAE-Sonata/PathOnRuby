class CreatePaths < ActiveRecord::Migration[6.1]
  def change
    create_table :paths do |t|
      t.string :origin
      t.string :destination
      t.string :intermediate, array: true, default: []
      t.boolean :links_to_same_article, default: false

      t.timestamps
    end
  end
end
