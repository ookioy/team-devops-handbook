#!/bin/bash

set -e

OUTPUT="CHANGELOG.md"

{
    echo "# Changelog"
    echo
    echo "Список змін автоматично згенеровано з історії Git."
    echo

    echo "## Features"
    git log --pretty=format:"- %s (%h)" --grep="^feat:"  || true
    echo
    echo

    echo "## Fixes"
    git log --pretty=format:"- %s (%h)" --grep="^fix:" || true
    echo
    echo

    echo "## Documentation"
    git log --pretty=format:"- %s (%h)" --grep="^docs:" || true
    echo
    echo

    echo "## Refactoring"
    git log --pretty=format:"- %s (%h)" --grep="^refactor:" || true
    echo
    echo

    echo "## Tests"
    git log --pretty=format:"- %s (%h)" --grep="^test:"  || true
    echo
    echo

    echo "## Chores"
    git log --pretty=format:"- %s (%h)" --grep="^chore:"  || true
    echo

} > "$OUTPUT"

echo "Changelog generated: $OUTPUT"
