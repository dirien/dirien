---
name: sort-projects
description: Sort the "My Projects" section in the GitHub profile README template by star count. Use this skill when the user asks to sort projects, reorder projects by stars, update project ordering, or refresh the project list ranking. Also use when the user adds a new project and wants it placed correctly by popularity.
---

# Sort projects by GitHub stars

Sorts the `## 🏗️ My Projects` section in `templates/README.md.tpl` (the template file, not the generated `README.md`) by descending GitHub star count. Projects with the most stars appear first.

The `readme-scribe` workflow renders `templates/README.md.tpl` into `README.md` — so always edit the `.tpl` file. Never edit `README.md` directly, it gets overwritten.

## How it works

Run the sort script from the repo root:

```bash
python3 .claude/skills/sort-projects/scripts/sort_projects_by_stars.py
```

The script:
1. Parses every `- emoji **[name](https://github.com/owner/repo)** - description` line in the My Projects section
2. Fetches the current star count for each repo via `gh api`
3. Sorts descending by stars
4. Rewrites the template file in place

Requires `gh` CLI authenticated with access to the listed repos.

## When to run

- After adding or removing a project from the list
- When the user asks to refresh or re-sort the project order
- Before pushing profile README changes if the order might be stale

## Project line format

Each project line must follow this format for the script to pick it up:

```
- EMOJI **[display-name](https://github.com/owner/repo)** - Short description
```

If a line doesn't match this pattern, the script skips it.

## After sorting

Review the new order in `templates/README.md.tpl`, commit, and push. The `readme-scribe` workflow will render the updated template into `README.md` on the next run.
