INSERT
INTO
    icpc_archive.problems
    (
        label,
        title,
        description,
        input,
        output,
        contest_id
    )
VALUES
    (
        'H',
        'Star Wars',
        '
        <p>
            Amirreza is playing the Star Wars game. This game is played on an $n \times
            m$ board where each cell is either empty (''.''), contains a white piece (''W'')
            or a black piece (''B''). At start of the game, Amirreza should choose exactly
            one white piece to play with. Afterwards he can move this piece multiple
            times to knock out as many black pieces as possible. Suppose the white piece
            is currently in cell ($i, j$) of the board; In one move, this piece can go
            up-left ($i - 1, j - 1$), up ($i - 1, j$) or up-right ($i - 1, j + 1$),
            provided that cel exists on the board and it does not contains another white
            piece. If the cell contains a black piece, it will be knocked out. Help
            Amirreza figure out the maximum number of black pieces he can knock out.
        </p>
        ',
        '
        <p>
            The first line contains two integers $n$ and $m$ ($1 \le n, m \le 50$), the
            number of rows and columns in the board, respectively. This is followed by
            $n$ lines, each containing $m$ characters. The $j ^ {th}$ character of the
            ($i + 1$) $^ {th}$ line represents cell ($i, j$). Each character is ''W'',
            ''B'', or ''.'' denoting a white piece, a black piece, or an empty cell,
            respectively.
        </p>
        ',
        '
        <p>
            Print a single integer, the maximum number of black pieces Amirreza can
            knock out.
        </p>
        ',
        24
    );
