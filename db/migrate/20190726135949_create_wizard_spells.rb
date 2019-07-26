class CreateWizardSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :wizard_spells do |t|
      t.integer :wizard_id
      t.integer :spell_id
    end
  end
end
