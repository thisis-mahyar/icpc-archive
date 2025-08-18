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
        'J',
        'Magic with Cards',
        '
        <p>
            Mahsa has been practicing shuffling cards for a few months now. Tonight, she
            finally decided to invite her friends over and show off her new skills. So
            she picks up a deck with $2n$ cards, shows her friends the face of the cards
            without changing the deck order and asks someone to pick two positions $i$
            and $j$ in the deck. Then, she tells everyone that she is going to move the
            card in the $i$-th position to the $j$-th position by applying only two
            types of shuffles.
        </p>
        <p>
            Assume the cards in the deck are $\\langle c_1, c_2, \\dots, c_{2n}
            \\rangle$. Mahsa can perform these two shuffles as many times as she wants:
        </p>
        <p>
            <strong>Riffle:</strong> Divide the cards into two parts $\\langle c_1,
            \\dots, c_n \\rangle$ and $\\langle c_{n + 1}, \\dots, c_{2n} \\rangle$
            and produce $\\langle c_1, c_{n + 1}, c_2, c_{n + 2}, \\dots,
            c_n, c_{2n} \\rangle$.
        </p>
        <p>
            <strong>Scuffle:</strong> From $\\langle c_1, c_2, \\dots, c_{2n}
            \\rangle$, produce $\\langle c_2, c_1, c_4, c_3, \\dots, c_{2n}, c_{2n -
            1} \\rangle$.
        </p>
        <p>
            Help Mahsa find out the minimum number of shuffles she needs, and she''ll
            figure out the rest.
        </p>
        ',
        '
        <p>
            The input consists of a single line containing three space-separated
            integers $n$, $i$ and $j$ ($1 \\le n \\le 10 ^ 5$ and $1 \\le i, j \\le 2n$).
        </p>
        ',
        '
        <p>
            Print a single integer, the minimum number of shuffles required to bring the
            $i$ -th card to $j$ -th position. If it is not possible to do so, print $-1$
            instead.
        </p>
        ',
        23
    );
