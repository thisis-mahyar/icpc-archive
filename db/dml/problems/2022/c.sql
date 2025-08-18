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
        'Simplification',
        '
        <p>
            Amin records the price of his stock every now and then as a data point
            ($t_i, p_i$) in his notebook, where $p_i$ is the price of his stock at day
            $t_i$. The sequence of these data points represents a piecewise-linear
            function $F$ displaying the history of prices over a period of time. Indeed,
            $F$ connects every pair of consecutive points by a straight line segment. If
            the price is not recorded for some day $t$, $F(t)$ can be used as an
            estimate instead.
        </p>
        <p>
            His collected data is getting larger and larger as he has been tracking the
            price of his stock over a long period of time. Therefore, he has decided to
            reduce his data by throwing away some of his recoded data points and
            constructing a new piecewise-linear function $F ^ \\prime$ with the remaining
            points. $F ^ \\prime$ is a so-called "simplification" of $F$. Amin wants to
            create the simplification in such a way that $F ^ \\prime$ is a good
            approximation for $F$. To this end, he has defined an error measure as
            follows.
        </p>
        <p>
            Let $F$ be defined over a strictly increasing sequence $L = \\langle t_1,
            \\dots, t_n \\rangle$ of days, and $F ^ \\prime$ be defined over a subsequence
            $L ^ \\prime = \\langle t_1 ^ \\prime , \\dots , t_m ^ \\prime \\rangle$ of $L$,
            where $t_1 ^ \\prime = t_1, t_m ^ \\prime = t_n$, and $F ^ \\prime (t_i ^
            \\prime) = F (t_i ^ \\prime)$ for $1 \\le i \\le m$. (We call $m$ the size of $F
            ^ \\prime$.) The error of $F ^ \\prime$ is defined as the maximum of $| F ^
            \\prime (t_k) - F (t_k) |$ for all $1 \\le k \\le n$. For example, in the
            following figure, we have 6 data points, labeled 1 through 6, whose
            coordinates are the same as those presented in the second sample input, and
            $F ^ \\prime$ is a simplification of $F$ of size 3 with data points 1, 4 and
            6. In this figure, $F$ is depicted by solid lines, and $F ^ \\prime$ by
            dashed lines. The error measure for $F ^ \\prime$ is realized by the vertical
            distance of point 2 to $F ^ \\prime$ .
        </p>
        <p>
            <img alt = "Image" src = "../../img/2022/c.png">
        </p>
        <p>
            Amin''s goal is to minimize the size of $F ^ \\prime$, while the error of $F ^
            \\prime$ is bounded by a given value $\\delta$
        </p>
        ',
        '
        <p>
            The first line of input contains a positive integer $n$ ($2 \\le n \\le 2000$)
            that shows the size of $F$. Each of the next $n$ lines contains two integers
            $t_i, p_i$ ($1 \\le t_i, p_i \\le 10 ^ 6$), where $p_i$ is the price of the
            stock at day $t_i$. The last line contains the error limit $\\delta$ which is
            a non-negative integer at most $10 ^ 6$ .
        </p>
        ',
        '
        <p>
            In the output, print the minimum possible size of $F ^ \\prime$
        </p>
        ',
        23
    );
