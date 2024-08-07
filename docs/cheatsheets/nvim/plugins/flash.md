# flash

## Flash search (move cursor to search)

(Move cursor to search)

- `s{searchterm}{selectlabel}`: Choose label for {searchterm} to move cursor to

## Flash Treesitter

(Visual selection of chosen Treesitter node based on cursor start location)

- `S{searchterm}{selectlabel}`: Start with cursor on symbol of interest, then choose a label for the desired selection

## Remote Flash

(Copy or delete remotely based on search term and motion)

- `yr{searchterm}{selectlabel}{motion}`: Temporarily move the cursor to the selected {searchterm} and then perform a yank on the {motion}
- `dr{searchterm}{selectlabel}{motion}`: Temporarily move the cursor to the selected {searchterm} and then perform a delete on the {motion}

## Remote Treesitter Search

(Copy or delete remotely based on search term and selected Treesitter node)

- `yR{searchterm}{selectlabel}`: Move the cursor to the {searchterm} where a Flash Treesitter search occurs then copy the {selectedlabel}
- `dR{searchterm}{selectlabel}`: Move the cursor to the {searchterm} where a Flash Treesitter search occurs then delete the {selectedlabel}

## Toggle Flash Search (while in search mode)

- `<leader>S`: Toggle Flash Search

## Links

- https://github.com/folke/flash.nvim
