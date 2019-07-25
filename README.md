# Yer a Wizard!

## Practice:
- Domain Modeling 
- Creating Migrations
- Working with Associations
- Advanced ActiveRecord querying

## Goals: 
- Build out a database with proper models and relationships 
- Create migrations for all the tables you need
- Create a `seeds.rb` file to add data to your database
- Create the additional methods in the deliverables

## Deliverables:
- Build out a Wizards and Spells domain
  - You'll need to come up with a way to connect these models!

- Wizard
  - has a `name`
  - has a `skill_level` as an integer
  - has a `hogwarts_degree` as a boolean
  - has many spells

- Spell
  - has a `name`
  - has a `invocation_phrase` (like "Abra Cadabra")
  - has a `level_requirement` as an integer
  - has a `spell_type` (like fire, healing, etc.)
  - has many wizards 

- `Wizard#spells` 
  - return all the spells the wizard knows
- `Wizard#invoke_spells` 
  - `puts` to the console all the invocation phrases for the spells the wizard knows
- `Wizard#wart_grad` 
  - `puts` to the console the phrase `Yer a wizard, wizard_name` IF the wizard is a Hogwarts graduate
- `Wizard.all_hogwarts_grads` 
  - returns all wizard instances who are Hogwarts graduates
- `Wizart.strongest` 
  - return the wizard with the highest skill level
- `Wizard#learn_spell`
  - takes a spell instance as an argument, and adds it to the list of spells the wizard knows
  - BONUS: only let the wizard learn this spell if their skill_level is greater than or equal to the spell's `level_requirement`

- `Spell#wizards` 
  - return all the wizards that know this spell
- `Spell.sort_by_name` 
  - return the spell instances ordered by `name`
- `Spell.sort_by_level` 
  - return the spell instances ordered by `level_requirement`
- `Spell.find_all_by_type` 
  - takes a spell type as an argument and returns all spell instances that have that `spell_type`
