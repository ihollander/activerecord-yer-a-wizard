class Spell < ActiveRecord::Base
  has_many :wizard_spells
  has_many :wizards, through: :wizard_spells

  def self.sort_by_name
    Spell.order(:name)
  end

  def self.sort_by_level
    Spell.order(:level)
  end

  def self.find_all_by_type(type)
    Spell.where(spell_type: type)
  end
end