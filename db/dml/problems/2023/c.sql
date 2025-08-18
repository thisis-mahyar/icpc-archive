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
        'C',
        'Moderation in all things',
        '
        <p>
            Initially, we have an array of length 1 containing only the number O. All
            natural numbers are listed in ascending order in the "reservation list" (the
            first number in the list is 1). The array undergoes $q$ operations. The $i ^
            {th}$ operation, is one of the following:
        </p>
        <ul>
            <li>
                <code>Insert(p, x)</code>: Insert the first $x$ numbers from the
                reservation list after the number $p$ in the array, in ascending order.
                These numbers are removed from the reservation list.
            </li>
            <li>
                <code>Remove(p, x)</code>: Remove the next $x$ numbers after number $p$
                in the array. These numbers are not returned to the reservation list.
            </li>
        </ul>
        <p>
            You are given information about $q$ operations, and you are asked to
            determine the number written in the middle of the array after each
            operation. If the length of the array after the $i ^ {th}$ operation is $n$,
            you should find the $\\lceil \\frac n 2 \\rceil ^ {th}$ element of the array.
            Note that the indexing of the array starts from 1.
        </p>
        ',
        '
        <p>
            The first line contains an integer $q$ ($1 \\le q \\le 5 \\cdot 10 ^ 5$), which
            represents the number of operations. Each of the next $q$ lines contains two
            integers: $p_i$ ($1 \\le p_i \\le 2 \\cdot 10 ^ 9$, and $k_i$ ($1 \\le | k_i |
            \\le 2 \\cdot 10 ^ 9$).
        </p>
        <p>
            If $k_i = +x$, operation <code>Insert</code> $p_i$<code>, x</code> is
            executed. If $k_i = -x$, operation <code>Remove</code> $p_i$<code>, x</code>
            is executed.<br>It is guaranteed that all operations are valid, and no
            impossible operation is performed on the array. Additionally, at most $2
            \\cdot 10 ^ 9$ numbers are moved from the reservation list into the array.
        </p>
        ',
        '
        <p>
            Output $q$ lines. In the $i ^ {th}$ line, print the middle element of the
            array after performing the $i ^ {th}$ operation.
        </p>
        ',
        24
    );
