class CreateS < ActiveRecord::Migration[5.2]
  def change
    create_table :s do |t|
      t.string :title

      t.timestamps
    end
  end
end
