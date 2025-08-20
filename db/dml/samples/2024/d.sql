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
        5 8 2
        1 1
        1 5
        5 4
        4 2
        3 4
        1 2
        2 3
        3 4
        4 1
        5 1
        5 2
        5 3
        5 4
        1 2 4 5
        2 3 3 4
        ',
        '
        No
        Yes
        ',
        '
        <img alt = "Image" src = "">

        <p>
            In the first attack simulation, the first and third base stations are
            outside the attack region; however, they are not connected to each other.
        </p>
        '
    );