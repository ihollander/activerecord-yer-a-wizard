class Wizard < ActiveRecord::Base
  has_many :wizard_spells
  has_many :spells, through: :wizard_spells

  def invoke_spells
    phrases = spells.map do |spell|
      spell.invocation_phrase
    end
    puts phrases.join("\n")
  end

  def wart_grad
    puts "Yer a wizard, #{name}" if hogwarts_degree
  end

  def learn_spell(spell)
    wizard_spells.create(spell: spell) if spell.level_requirement <= skill_level
  end

  def self.all_hogwarts_grads
    Wizard.where(hogwarts_degree: true)
  end

  def self.strongest
    Wizard.order(skill_level: :desc).first
  end

end