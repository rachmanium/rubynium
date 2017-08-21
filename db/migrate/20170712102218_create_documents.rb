class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :nama_file
      t.string :departemen
      t.string :nomor_dokumen
      t.string :lokasi

      t.timestamps
    end
  end
end
