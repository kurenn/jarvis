class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :queries do |t|
      t.text :content

      t.timestamps
    end
  end
end
