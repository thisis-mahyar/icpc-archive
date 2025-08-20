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
        3 1
        juju ashi mashi
        insert fifi 1
        ',
        '
        juju fifi ashi mashi
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
        3 15
        m1 m2 f
        insert m3 0
        relocate m2 -2
        relocate m1 -2
        relocate m3 -2
        relocate m2 -2
        relocate m1 -2
        relocate m3 -2
        depart m2
        relocate m1 1
        relocate f 0
        relocate m3 0
        relocate f -1
        relocate m3 -1
        relocate m1 -2
        relocate f -1
        ',
        '
        m1 f m3
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
        4 5
        hedwig hermes fawkes errol
        insert pigwidgeon 1
        relocate hermes 2
        depart fawkes
        insert buckbeak 0
        depart hedwig
        ',
        '
        buckbeak pigwidgeon errol hermes
        ',
        '
        <p>
            A video of the first two sample inputs is provided in the attachment
            package.
            Copyright notice: the images and videos of this problem are taken from the
            following addresses:
        </p>
        <ul>
            <li>
                Animation “For the Birds”, Pixar Animation Studios
            </li>
            <li>
                https://www.instagram.com/p/BpBshBghJ54/
            </li>
            <li>
                https://www.instagram.com/p/B1XWKQXgGKe/
            </li>
        </ul>
        '
    );