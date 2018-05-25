class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :details
      t.boolean :done
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
