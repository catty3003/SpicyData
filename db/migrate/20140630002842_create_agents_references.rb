class CreateAgentsReferences < ActiveRecord::Migration
  def change
    create_table :agents_references, id: false do |t|
    	t.belongs_to :agent
      t.belongs_to :reference

    	t.timestamps
    end
  end
end

