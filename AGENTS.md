## Instructions for LLMs

1. Make sure you load the file `docs/llms.md` and read it all. Never skip reading that file for any task.

## Code smells

Reek runs over the whole project from `bin/ci`, configured in `.reek.yml`. Work is
not finished until `bin/reek .` reports no offenses.

- Never disable a detector, weaken a threshold, exclude a path, or suppress an
  offense without explicit user approval.
- Never add class-wide exclusions to make a folder pass.
- Never add inline `:reek:` suppression comments to Ruby files.
- Keep all user-approved Reek exceptions in `.reek.yml`.
- Give approved exceptions the narrowest available scope and add a short YAML
  comment explaining why.
- If an offense appears incorrect, conflicts with Rails conventions, or would
  require a harmful refactor, stop and ask the user. Include the exact offense and
  location, why it may not apply, the refactoring options, and the proposed
  `.reek.yml` exception if one is appropriate.
