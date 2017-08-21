class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :judul
      t.string :penulis
      t.text :isi

      t.timestamps
    end
  end
end
