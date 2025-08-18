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
        'D',
        'Dominoes',
        '
        <p>
            Pixar is gearing up to introduce its next animated film, Elemental, at the
            2023 Cannes Film Festival. But one of the scenes needs re-rendering. In this
            scene, there are $n$ dominoes in a straight line, and one of them is
            supposed to fall and drop a number of subsequent dominoes in a domino-like
            manner. Considering it is less than 1 month away from the 2023 Cannes Film
            Festival, Pixar asked you to write a program that calculates the cost of
            re-rendering the scene for $n$ initial domino choices.
        </p>
        <p>
            <img alt = "Image" src = "../../img/2022/d.png">
        </p>
        <p>
            To simplify the calculations, we assume that the dominoes are displayed from
            the side like line segments with no width on the coordinate axis, and they
            fall to the left. They are numbered from left to right and domino $i$ has
            height $l_i$ and is located at $x_i$. The cost of re-rendering this scene is
            equal to the area of the moving part of the scene, i.e. the union area of
            quarter circles of dropped dominoes. Note that domino falling areas may
            overlap, and the overlapped area should be calculated only once. The picture
            illustrates the falling of dominoes in the first sample test, when the
            initial domino choice for falling is the domino number 5.
        </p>
        ',
        '
        <p>
            The first line of input contains a positive integer $n$, indicating the
            number of dominoes. The next $n$ lines, each consists of a pair of integers,
            $x_i$ and $l_i$, indicating the location and the height of the domino number
            $i$ It is guaranteed that $n \le 200,000$ and $1 \le x_i, l_i \le 10 ^ 9$.
            Dominoes are given from left to right; i.e. $x_i \le x_{i + 1}$.
        </p>
        ',
        '
        <p>
            Output $n$ lines, where the $i$-th contains the cost of re-rendering the
            scene with $i$-th domino as the initial falling domino. All numbers must
            have an absolute or relative error of at most $10 ^ {-6}$.
        </p>
        ',
        23
    );
