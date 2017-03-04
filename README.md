# pandoc-docx-pagebreak

A Pandoc filter that replaces `PAGEBREAK` and `PAGEBREAKLANDSCAPE` with their
right Word section breaks. This enables documents to have a mixed layout
including portait and landscape sections. The filter can also be used just
for the page-break functionality provided.

## Usage

Example `markdown`:

```markdown

Portrait content ...

PAGEBREAK

+--------+------+-------+------+------+-----+-----+----+----------+
| Really | Long | Table | That | Does | Not | Fit | On | Portrait |
+========+======+=======+======+======+=====+=====+====+==========+
| 1      | 2    | 3     | 4    | 5    | 6   | 7   | 8  | 9        |
+--------+------+-------+------+------+-----+-----+----+----------+

PAGEBREAKLANDSCAPE

Just text ... (portrait again)

```


## Installation

### Using cabal and Hackage

```
git clone git@github.com:alexstoick/pandoc-docx-pagebreak.git
cd pandoc-docx-pagebreak
stack install pandoc-docx-pagebreak
```
