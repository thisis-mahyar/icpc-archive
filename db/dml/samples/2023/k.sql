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
        BUY (10 apple, 10 carrot, 10 banana, ())
        UNPACK 1
        UNPACK 2
        PACK (3 apple, (5 cArrot, 2 banana))
        PACK (3 apple, (5 carrOt, 1 banana))
        PACK (5 apple, (3 banana))
        ? MIN apple
        ? MIN CaRRoT
        ? CONTAINS apple
        ',
        '
        OK
        OK, 1 container added.
        OK, No containers added.
        OK
        OK
        DISCARD
        0
        2
        2
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
        BUY (apple, (banana, 3 carrot))
        BUY ((banana, apple), (banana, carrot))
        ? MIN apple
        UNPACK 1
        ? COUNT apple
        ? COUNT carrot
        ? CONTAINS banana
        ',
        '
        OK
        OK
        1
        OK, 1 container added.
        1
        0
        2
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
        3,
        '
        BUY ((duck 2, carrot), 1 celery)
        ? MIN duck
        ? MIN carrot
        ? MIN celery
        ? MIN test
        SELL 10
        PACK (celery)
        UNPACK 1
        UNPACK 1
        PACK (celery)
        ? COUNT celery
        ? COUNT carrot
        ? CONTAINS celery
        ? CONTAINS carrot
        BUY ((duck 8, carrot), ((7 duck), celery))
        UNPACK 4
        UNPACK 5
        UNPACK 6
        ? COUNT DUCK
        ? MIN duck
        ',
        '
        OK
        2
        2
        1
        -1
        DISCARD
        DISCARD
        OK, 1 container added.
        DISCARD
        OK
        0
        0
        1
        1
        OK
        OK, 2 containers added.
        OK, No containers added.
        OK, 1 container added.
        8
        0
        ',
        NULL
    );