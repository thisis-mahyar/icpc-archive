- For formulas inside braces, put braces outside the formula
- In formulas: _{x} -> _x
- A typical format in formulas: $1 \le n \le 5000$ (numbers must not be space-separated)
- Replace `,` and `.` with `, ` and `. ` (Find: `([.,])(\S)`, Replace: `$1 $2`)
- Replace `”` and `“` with `"`
- Replace `‘` and `’` with `'`
- Replace special characters which have two spaces with appropriate character.
    `．` -> `.`
    `，` -> `, `
    `）` -> `) `
    `（` -> ` (`
    `：` -> `.`
    ≤ -> \le
    ；-> ; 

- About $
    `( $` -> `($`
    `$ )` -> `$)`
    `$ ,` -> `$,`
    `$ .` -> `$.`
    `$(` -> `($`
    `)$` -> `$)`

- About \dots:
    `\ldots` -> `\dots`
    `\cdots` -> `\dots`
    `leq` -> `le`
    `\leqslant` -> `\le`

- About headings:
    `# Input` -> `## Input`
    `# Output` -> `## Output`
    `## Input (Standard Input)` -> `## Input`
    `## Output (Standard Output)` -> `## Output`

- Sometimes there is o or O instead of 0. Fix that!
- Unordered lists must have \n between and remove "  " after each item if exists
- Some double numbers are messed up!