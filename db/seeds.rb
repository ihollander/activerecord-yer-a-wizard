Wizard.destroy_all
Spell.destroy_all
WizardSpell.destroy_all

w1 = Wizard.create(name: "Bob", skill_level: 1, hogwarts_degree: false)
w2 = Wizard.create(name: "Carol", skill_level: 9001, hogwarts_degree: true)
w3 = Wizard.create(name: "Ted", skill_level: 8, hogwarts_degree: true)
w4 = Wizard.create(name: "Alice", skill_level: 77, hogwarts_degree: false)

s1 = Spell.create(name: "Fireball", invocation_phrase: "Blammo", level_requirement: 1, spell_type: "fire")
s2 = Spell.create(name: "Heal All", invocation_phrase: "Healimus Maximus", level_requirement: 10, spell_type: "healing")
s3 = Spell.create(name: "Twister!", invocation_phrase: "Head for shelter", level_requirement: 1000, spell_type: "air")
s4 = Spell.create(name: "Monster Attack", invocation_phrase: "Save Us, Godzilla!", level_requirement: 9000, spell_type: "fire")
s5 = Spell.create(name: "Curl Up in a Ball", invocation_phrase: "eep.", level_requirement: 0, spell_type: "protection")

w1.learn_spell(s1)
w1.learn_spell(s5)

w2.learn_spell(s2)
w2.learn_spell(s3)
w2.learn_spell(s4)
w2.learn_spell(s5)

w3.learn_spell(s4)
w3.learn_spell(s5)

w4.learn_spell(s1)
w4.learn_spell(s2)
w4.learn_spell(s3)