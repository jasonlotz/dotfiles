# Search and replace

## Search

- `/foo` - Search for `foo` in the file
- `?foo` - Search for `foo` in the file, but in the reverse direction
- `n` - Move to the next occurrence of the search term
- `N` - Move to the previous occurrence of the search term

## Replace

- `:s/foo/bar` - Replace the first occurrence of `foo` with `bar` in the current line
- `:s/foo/bar/g` - Replace all occurrences of `foo` with `bar` in the current line
- `:%s/foo/bar/g` - Replace all occurrences of `foo` with `bar` in the entire file
- `:%s/foo/bar/gc` - Replace all occurrences of `foo` with `bar` in the entire file, but ask for confirmation
- `:%s/foo/bar` - Replace the first occurrence on each line of `foo` with `bar` in the entire file
- `:10,20s/foo/bar/g` - Replace all occurrences of `foo` with `bar` between lines 10 and 20

## Advanced search and replace

- `s/(\(.*\) and \(.*\))/(\2 and \1)/g` - Example of using groups - replace `(a and b)` with `(b and a)` in the entire file

Notes:

- For both search and replace, if in visual mode, use `:` to enter command mode and use the same commands as above.
- Use up and down arrow keys to navigate through the search history.

## Interactive search and replace

After searching using `/pattern` or `?pattern`, you can use the following commands to interact with the search results:

- `cgn`: Change the next search pattern match
- `dgn`: Delete the next search pattern match

Don't forget that you can use `.` to repeat the last change made with `cgn` or `dgn`.
