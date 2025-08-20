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
        INPUT $2
        A $5 $2 #3
        INPUT $1
        MOVE $3 #20
        INPUT @3
        B $4 #1 $5
        E $7 $1 $3
        B $8 #20 #9
        D $8 $4 $8
        E $10 $7 $8
        OUTPUT $10
        3
        3 8 9 29
        1 0 0 21
        4 2 3 30
        ',
        '
        1
        XOR ADD MULT AND OR
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
        INPUT $0
        OUTPUT $0
        2
        0 0
        1 1
        ',
        '
        120
        ',
        NULL
    );