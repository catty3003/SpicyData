class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :adminreferencetype_id
      t.string :first_author_name
      t.integer :year
      t.string :title
      t.string :journal
      t.integer :volume
      t.string :page_from
      t.string :page_to
      t.string :link
      t.string :matrix
      t.string :agent
      t.string :spiking
      t.string :treatment
      t.string :sample_prep
      t.string :detection
      t.string :tenacity
      t.text :r_comment
      t.integer :user_id

      t.timestamps
    end
  end
end
