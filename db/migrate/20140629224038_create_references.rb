class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :adminreferencetype_id
      t.string :first_author_name
      t.integer :year
      t.string :title
      t.string :journal
      t.integer :volume
      t.integer :page_from
      t.integer :page_to
      t.string :link
      t.boolean :matrix
      t.boolean :agent
      t.boolean :spiking
      t.boolean :treatment
      t.boolean :sample_prep
      t.boolean :detection
      t.boolean :tenacity
      t.text :r_comment
      t.integer :user_id

      t.timestamps
    end
  end
end
