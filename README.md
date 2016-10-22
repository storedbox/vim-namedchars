# Wolfram Language-compatible Named Characters

## About

Adds insert-mode abbreviations for Wolfram Language's named characters.
See [Listing of Named Characters] at Wolfram's Documentation Center for more details.

[Listing of Named Characters]: https://reference.wolfram.com/language/guide/ListingOfNamedCharacters.html

## Commands

Name                   |Description
-----------------------|---------------------------------------------
:EnableNamedCharacters |Add abbreviations to the current buffer.
:DisableNamedCharacters|Remove abbreviations from the current buffer.

## Autocmds:

Named characters are enabled for Mathematica language files by default:

```vim
:autocmd FileType mma :EnableNamedCharacters
```
