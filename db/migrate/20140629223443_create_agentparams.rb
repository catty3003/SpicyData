class CreateAgentparams < ActiveRecord::Migration
  def change
    create_table :agentparams do |t|
      t.decimal :infectious_dose
      t.decimal :level_of_infectious_dose
      t.string :infected_species
      t.integer :agent_id

      t.timestamps
    end
  end
end
