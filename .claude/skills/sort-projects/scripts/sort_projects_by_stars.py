#!/usr/bin/env python3
"""Sort the '## 🏗️ My Projects' section in README.md.tpl by GitHub star count (descending)."""

import re
import subprocess
import sys
from pathlib import Path

TEMPLATE = Path(__file__).resolve().parent.parent / "templates" / "README.md.tpl"
PROJECT_RE = re.compile(
    r"^- .+ \*\*\[.+?\]\(https://github\.com/(?P<owner>[^/]+)/(?P<repo>[^)]+)\)\*\* - .+$"
)


def get_stars(owner: str, repo: str) -> int:
    """Fetch star count via gh CLI."""
    try:
        result = subprocess.run(
            ["gh", "api", f"repos/{owner}/{repo}", "--jq", ".stargazers_count"],
            capture_output=True,
            text=True,
            timeout=10,
        )
        if result.returncode == 0 and result.stdout.strip():
            return int(result.stdout.strip())
    except (subprocess.TimeoutExpired, ValueError):
        pass
    return 0


def main() -> None:
    content = TEMPLATE.read_text()
    lines = content.splitlines(keepends=True)

    # Find the project section
    start = None
    end = None
    for i, line in enumerate(lines):
        if line.strip() == "## 🏗️ My Projects":
            start = i
        elif start is not None and line.startswith("## ") and i > start:
            end = i
            break

    if start is None:
        print("No '## 🏗️ My Projects' section found.", file=sys.stderr)
        sys.exit(1)

    if end is None:
        end = len(lines)

    # Extract project lines (skip blank lines and the header)
    project_lines = []
    other_before = []  # lines between header and first project (blank lines)
    found_first_project = False

    for line in lines[start + 1 : end]:
        stripped = line.rstrip("\n")
        if PROJECT_RE.match(stripped):
            found_first_project = True
            project_lines.append(stripped)
        elif not found_first_project:
            other_before.append(line)

    if not project_lines:
        print("No project lines found to sort.", file=sys.stderr)
        sys.exit(1)

    # Fetch stars for each project
    projects_with_stars = []
    for line in project_lines:
        m = PROJECT_RE.match(line)
        if not m:
            continue
        owner, repo = m.group("owner"), m.group("repo")
        stars = get_stars(owner, repo)
        projects_with_stars.append((stars, line))
        print(f"  {owner}/{repo}: {stars} stars")

    # Sort descending by stars
    projects_with_stars.sort(key=lambda x: x[0], reverse=True)

    # Rebuild
    new_section = [lines[start]]  # header
    new_section.extend(other_before)  # blank line(s) after header
    for _, line in projects_with_stars:
        new_section.append(line + "\n")
    new_section.append("\n")  # trailing blank line

    new_content = "".join(lines[:start] + new_section + lines[end:])
    TEMPLATE.write_text(new_content)
    print(f"\nSorted {len(projects_with_stars)} projects by star count.")


if __name__ == "__main__":
    main()
