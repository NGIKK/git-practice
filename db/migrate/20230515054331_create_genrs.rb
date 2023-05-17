class CreateGenrs < ActiveRecord::Migration[6.1]
  def change
    create_table :genrs do |t|
      t.string :genres_name
      t.timestamps
    end
  end
end
