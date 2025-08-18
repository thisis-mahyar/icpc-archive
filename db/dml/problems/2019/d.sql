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
        'Cafebazaar''s Chess Tournament',
        '
        <p>
            Ali hosts a yearly chess tournament for CafeBazaar''s Shab-e Yalda festival.
            In a chess tournament, each pair of participants play a game against each
            other exactly once. Moreover, players are granted one point for a win, a
            half point for a draw, and no points for a loss toward their tournament
            score.
        </p>
        <p>
            Danial has built a system to predict the result of Ali''s tournament. Based
            on experience, he has assigned an opening skill and an ending skill to each
            of $n$ participants in the tournament. For the $i$-th participant, let us
            denote the former with $o_i$ and the latter with $e_i$. In a game between
            the $i$-th and $j$-th participants, Danial decides the result of the game
            according to the following rules:
        </p>
        <ol>
            <li>
                <p>
                    If $o_i &gt; o_j$ and $e_i &gt; e_j$, then the $i$-th participant
                    wins the game.
                </p>
            </li>
            <li>
                <p>
                    If $o_j &gt; o_i$ and $e_j &gt; e_i$, then the $j$-th participant
                    wins the game.
                </p>
            </li>
            <li>
                <p>
                    Otherwise, the game ends in a draw.
                </p>
            </li>
        </ol>

        <p>
            To make the tournament more exciting, Ali wants to invite Danial to join the
            other $n$ participants in the tournament. Since Danial has no prior
            experience in chess he decides to practice for the tournament. Based on the
            amount of training, Danial can end up with any opening and ending skill.
            However, Danial has promised Ali that he will train in such a way that his
            opening skill will be <strong>different</strong> from the opening skill of
            the other participants. He will also keep his ending skill
            <strong>different</strong> from the ending skill of the other participants.
        </p>
        <p>
            For his advertisement campaign, Ali wants to know the number of distinct
            possible final scores that Danial might get based on Danial''s rules
            mentioned above. For example, Danial can achieve the scores O, 1.5, 2.5, 3,
            4, and 5 in the sample. For instance, the score 3 is obtained by setting the
            opening and ending skills of Danial to be 1.5. Since Ali and all other
            CafeBazaar programmers are busy planning the event, he has turned to you for
            help. Write a program to calculate this value.
        </p>
        ',
        '
        <p>
            The first line of the input contains a single integer $n$ ($1 \\le n \\le
            200000$), the number of participants. The $i$-th line of the next $n$ lines
            contains two integers $o_i$ and $e_i$ ($1 \\le o_i, e_i \\le n$), the opening
            and ending skills of the $i$ -th participant, respectively. Note that the
            limits for opening and ending skills do not apply to Danial''s opening and
            ending skills. More specifically, Danial''s opening and ending skills can be
            any real numbers.
        </p>
        ',
        '
        <p>
            In the only line of the output, print the number of distinct possible final
            scores for Danial.
        </p>
        ',
        21
    );
