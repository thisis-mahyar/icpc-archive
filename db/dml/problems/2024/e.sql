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
        'E',
        'PCB',
        '
        <p>
            In designing a printed circuit board (PCB), each consumer must be connected
            to a power supply via conductive wires. The PCB is a rectangle of width $W$
            and height $H$. It is represented as a grid of integer coordinates from ($0,
            0$) to ($W + 1, H + 1$).
        </p>
        <p>
            There are $n$ power supplies along the left edge of the board and $n$
            consumers each located somewhere inside the board. The $i ^ {th}$ power
            supply is located at position ($0, h_i$) and the $i ^ {th}$ consumer is
            located at position ($x_i, y_i$). Each power supply must connect to exactly
            one consumer and vice versa.
        </p>
        <p>
            Each wire must run along the grid lines, bending at most once. i.e., each
            wire is either a straight vertical or horizontal line or makes exactly one
            90-degree turn, forming an "L" shape. Wires cannot cross or overlap with
            each other anywhere along their paths.
        </p>
        <p>
            Your task is to determine a matching between power supplies and consumers
            such that the total length of all wires is minimized.
        </p>
        ',
        '
        <p>
            The input consists of several lines:
        </p>
        <ul>
            <li>
                <p>
                    The first line contains three integers $W$, $H$ and $n$ ($1 \\le W, H
                    \\le 10 ^ 8$; $1 \\le n \\le 10 ^ 6$).
                </p>
            </li>
            <li>
                <p>
                    Each of the next $n$ lines contains an integer $h_i$ ($1 \\le h_i \\le
                    H$)
                </p>
            </li>
            <li>
                <p>
                    Each of the next $n$ lines contains two integers $x_i$ and $y_i$ ($1
                    \\le x_i \\le W; 1 \\le y_i \\le H$)
                </p>
            </li>
        </ul>
        <p>
            It is guaranteed that each point in the board contains at most one power
            supply or consumer. Moreover, no two consumers $i$ and $j$ exist where $x_i
            = x_j$.
        </p>
        ',
        '
        <p>
            If it is not possible to find such a matching under the given constraints,
            output a single line containing $-1$.
        </p>
        <p>
            Otherwise, output a single line containing $n$ space-separated integers. The
            $i ^ {th}$ integer describes $p_i$, indicating that power supply $i$ is
            connected to consumer $p_i$.
        </p>
        ',
        25
    );
