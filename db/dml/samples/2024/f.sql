INSERT
INTO
    icpc_archive.samples
    (
        problem_id,
        number,
        input,
        output,
        note
    )
VALUES
    (
        1,
        1,
        '
        0912 358 8908
        0872-3344567,0989112-2345
        9899988782
        #
        go 0
        pick 0 3
        next 4
        forward 12
        next 2
        backward 2
        pick 0 1
        go 3
        pick 0 1
        delete 1
        ',
        '
        0912091287090
        ',
        NULL
    );

INSERT
INTO
    icpc_archive.samples
    (
        problem_id,
        number,
        input,
        output,
        note
    )
VALUES
    (
        1,
        2,
        '
        09242424024
        00188990376
        #
        go 2
        next 4
        delete 1
        ',
        '
        MISS ME!
        ',
        NULL
    );