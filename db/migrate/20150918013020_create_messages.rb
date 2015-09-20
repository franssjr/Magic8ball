class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :the_message

      t.timestamps
    end

    create_table :histories do |t|
      t.belongs_to :message, index: true

      t.timestamps null: false
    end
  end
end
