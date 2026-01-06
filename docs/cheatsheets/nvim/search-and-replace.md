# Search and replace

## Search

See :help search for more details.

- `/foo`: Search for `foo` in the file
- `?foo`: Search for `foo` in the file, but in the reverse direction
- `n`: Move to the next occurrence of the search term
- `N`: Move to the previous occurrence of the search term

## Substitute

See :help substitute for more details.

- `:s/foo/bar`: Replace the first occurrence of `foo` with `bar` in the current line
- `:s/foo/bar/g`: Replace all occurrences of `foo` with `bar` in the current line
- `:%s/foo/bar/g`: Replace all occurrences of `foo` with `bar` in the entire file
- `:%s/foo/bar/gc`: Replace all occurrences of `foo` with `bar` in the entire file, but ask for confirmation
- `:%s/foo/bar`: Replace the first occurrence on each line of `foo` with `bar` in the entire file
- `:10,20s/foo/bar/g`: Replace all occurrences of `foo` with `bar` between lines 10 and 20

## Global

See :help global for more details.

### Print

- `:g/foo/p`: Print all lines containing `foo`
- `:v/foo/p`: Print all lines not containing `foo`

### Delete

- `:g/foo/d`: Delete all lines containing `foo`
- `:v/foo/d`: Delete all lines not containing `foo`
- `:g/^$/d`: Delete all empty lines in the file

### Replace

- `:g/foo/s//bar/g`: Replace all occurrences of `foo` with `bar` in lines that contain `foo`
- `:v/foo/s//bar/g`: Replace all occurrences of `foo` with `bar` in lines that do not contain `foo`

### Move

- `:g/foo/m{linenumber}`: Move all lines containing `foo` to after {linenumber} (or ^/$ for start/end of file)
- `:v/foo/m{linenumber}`: Move all lines not containing `foo` to after {linenumber} (or ^/$ for start/end of file)

## Advanced search and replace

- `s/(\(.*\) and \(.*\))/(\2 and \1)/g`: Example of using groups - replace `(a and b)` with `(b and a)` in the entire file

Notes:

- For both search and replace, if in visual mode, use `:` to enter command mode and use the same commands as above.
- Use up and down arrow keys to navigate through the search history.

## Interactive search and replace

After searching using `/pattern` or `?pattern`, you can use the following commands to interact with the search results:

- `cgn`: Change the next search pattern match
- `dgn`: Delete the next search pattern match

Don't forget that you can use `.` to repeat the last change made with `cgn` or `dgn`.
