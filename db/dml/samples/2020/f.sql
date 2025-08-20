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
        8 7
        K-PAX SIRIUS REGULUS ARCTURUS BELLATRIX ANDROMEDA CYGNUS SCORPIUS
        8 1 2 3 4 5 6 8 7
        6 2 3 4 7 8 6
        5 1 2 3 5 8
        3 5 6 7
        2 2 8
        0
        1 1
        ',
        '
        8001 1 *
        6002 2 *US A*
        5003 3 *X *IUS REGULUS
        3003 3 B* AND* *NUS
        2001 1 S*
        0 0
        1001 1 K*
        ',
        NULL
    );