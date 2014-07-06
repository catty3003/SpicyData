class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.integer :adminagentname_id
      t.integer :adminagentfamily_id
      t.integer :adminagentgenu_id
      t.integer :adminagentspec_id
      t.string :subspecies
      t.string :serovar
      t.string :other_agent_name
      t.string :ref_number
      t.decimal :rate_of_illness
      t.decimal :morbidity
      t.decimal :mortality
      t.string :isolation_source
      t.string :natural_occurence
      t.text :a_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
