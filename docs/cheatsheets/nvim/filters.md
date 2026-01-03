# Filters

## Basic filters

Selected lines can be filtered using external commands by prefixing them with `:!`. Here are some common filters:

- `:!sort`: Sort selected lines in ascending order
- `:!sort -r`: Sort selected lines in descending order
- `:!sort | uniq`: Sort and remove duplicate lines from selection
- `:!uniq`: Remove duplicate lines from selection (keep first occurrence)
- `:!uniq -u`: Remove duplicate lines from selection (keep only unique lines)
- `:!grep {pattern}`: Keep only lines matching {pattern}
- `:!grep -v {pattern}`: Remove lines matching {pattern}

## Fun filters

- `:!figlet`: Transform selected text into large ASCII art using Figlet
