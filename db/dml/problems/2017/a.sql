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
        'Sim Card',
        '
        <p>
            There are three mobile operators in Iran. Each operator has different prices
            for call and data usage, given in the table below. All prices are in Rials:
        </p>
        <table>
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Call (per minute)</th>
                <th>Data (per megabyte)</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>ParsTel</td>
                <td>30</td>
                <td>40</td>
            </tr>
            <tr>
                <td>2</td>
                <td>ParsCell</td>
                <td>35</td>
                <td>30</td>
            </tr>
            <tr>
                <td>3</td>
                <td>ParsPhone</td>
                <td>40</td>
                <td>20</td>
            </tr>
            </tbody>
        </table>
        <p>
            Some foreign students have arrived Iran to participate in the ACM-ICPC,
            Tehran Site. They already know how many minutes they will call, and how much
            Internet they will use. Foreach student, you want to recommend an operator
            to minimize the total cost of call usage and data usage for that student.

        </p>
        ',
        '
        <p>
            Each line of the input contains the information of one student. For each
            student, there are two positive integers $c$ and $d$ ($1 \\le c, d \\le 1000$)
            that show the amount of call (in minutes) and data usage (in megabytes) for
            the student, respectively. The input terminates with <code>0 0</code> that
            should not be processed.
        </p>
        ',
        '
        <p>
            For each student, print a line containing the minimum total cost of call
            usage and data usage.
        </p>
        ',
        19
    );
