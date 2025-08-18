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
        'A',
        'Micromasters',
        '
        <p>
            The Department of Computer Engineering at Sharif University of Technology
            has recently initiated a professional education program known as
            Micromasters. This program offers a set of courses designed to empower
            students with specialized knowledge and skills in various domains of
            computer science and engineering. As an incentive to promote the program,
            the department has introduced a referral system wherein individuals who
            refer other students to the Micromasters program receive a $10 \%$ discount
            for each referred student on their own course registrations.
        </p>
        <p>
            <img alt = "Image" src = "../../img/2023/a.png">
        </p>
        <p>
            Mina is a talented student who is passionate about spreading the benefits of
            the Micromasters program. With each referral, Mina''s list of discounts
            grows, and now the following question arises: given the number of students
            who are referred by Mina, how many courses can she enroll in for free?
        </p>
        ',
        '
        <p>
            The input consists of a single line containing a single integer $n$ ($0 \le
            n \le 1000$), which represents the number of students that Mina has
            referred.
        </p>
        ',
        '
        <p>
            Print a single line, containing the number of courses Mina can enrolling for
            free using the discounts.
        </p>
        ',
        24
    );
