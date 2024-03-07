class CreateWeightHistroys < ActiveRecord::Migration[7.0]
  def change
    create_table :weight_histroys do |t|
      t.integer :weight
      t.string :memo

      t.timestamps
    end
  end
end
