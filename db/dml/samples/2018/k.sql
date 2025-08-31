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
        22,
        1,
        '
        class B(A):
            pass

        class C(A):
            pass

        class A:
            pass
        ',
        '
        1
        ',
        NULL
    );