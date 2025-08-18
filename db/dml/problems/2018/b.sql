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
        'B',
        'Charshanbegan at Cafebazaar',
        '
        <p>
            Charshanbegan is a gathering event at Cafebazaar similar to TGIF events at
            Google. Some entertainment programs like pantomime, foosball, Xbox/PS4, and
            several board games are part of the event. You are going to set up a dart
            game in Charshanbegan. As a techie organizing a game for techies, you would
            rather use a smart screen and write a program to calculate the scores
            instead of hanging a traditional dartboard and scoring the shots manually.
            Your program must get the coordinates of dart shots for a player and
            calculate his/her total score. The score for each dart shot at point ($x ,
            y$) is calculated based on its distance from the center of the dartboard
            (point ($0, 0$). If the distance is $d$ millimeters, the score is calculated
            based on the following table:
        </p>
        <p>
            <img alt = "img-2018-b" src = "../../img/2018/b.png">
        </p>
        <table>
            <thead>
            <tr>
                <th>Condition</th>
                <th>Score</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>$d \\le 10$</td>
                <td>$10$</td>
            </tr>
            <tr>
                <td>$10 \\le d \\le 30$</td>
                <td>$9$</td>
            </tr>
            <tr>
                <td>$30 \\le d \\le 50$</td>
                <td>$8$</td>
            </tr>
            <tr>
                <td>$50 \\le d \\le 70$</td>
                <td>$7$</td>
            </tr>
            <tr>
                <td>$70 \\le d \\le 90$</td>
                <td>$6$</td>
            </tr>
            <tr>
                <td>$90 \\le d \\le 110$</td>
                <td>$5$</td>
            </tr>
            <tr>
                <td>$110 \\le d \\le 130$</td>
                <td>$4$</td>
            </tr>
            <tr>
                <td>$130 \\le d \\le 150$</td>
                <td>$3$</td>
            </tr>
            <tr>
                <td>$150 \\le d \\le 170$</td>
                <td>$2$</td>
            </tr>
            <tr>
                <td>$170 \\le d \\le 190$</td>
                <td>$1$</td>
            </tr>
            <tr>
                <td>$190 \\le d$</td>
                <td>$0$</td>
            </tr>
            </tbody>
        </table>
        ',
        '
        <p>
            The first line of the input contains a single integer $N$ as the number of
            dart shots for a player ($1 \\le N \\le 100$). Each of the next $N$ lines
            contains two space-separated integers as the coordinates ($x$, $y$) of a
            dart shot. The coordinates are in millimeters and their absolute values will
            not be greater than 300.
        </p>
        ',
        '
        <p>
            Print a single line containing the total score of the player.
        </p>
        ',
        20
    );
