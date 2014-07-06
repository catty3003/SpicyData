class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.integer :adminagentname_id
      t.string :a_family
      t.string :a_genus
      t.string :a_species
      t.string :subspecies
      t.string :serovar
      t.string :other_agent_name
      t.integer :ref_number
      t.float :rate_of_illness
      t.float :morbidity
      t.float :mortality
      t.string :isolation_source
      t.string :natural_occurence
      t.text :a_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
