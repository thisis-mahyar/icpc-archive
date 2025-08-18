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
        'Getting Back Home',
        '
        <p>
            Arman has recently moved to a remote village in the countryside. The map of
            the village is in the form of a tree, i.e. there are exactly $n - 1$ roads
            connecting $n$ intersections of the village such that for every pair of
            intersections there is a sequence of roads connecting them.
        </p>
        <p>
            Every morning Arman goes to his office and late at night he gets back home.
            It is very dark at night and the village roads do not have any lights so
            Arman is starting to have problems finding his way back home. There are no
            signs at intersections and he cannot distinguish them from each other. Even
            his phone is not signaling on the way, and using GPS is not possible. To
            solve the problem, he has decided to buy a flashlight. Flashlights have
            different integer beam distances, and a flashlight with a higher beam range
            costs more. A flashlight with range $d$ reveals the intersections within a
            distance at most $d$ around the current intersection. All roads of the
            village have an equal length of 1.
        </p>
        <p>
            When Arman leaves office towards home, in every intersection of the path he
            traverses, he makes a decision as explained below.
        </p>
        <ol>
            <li>
                <p>
                    If he sees home, he just moves towards it.
                </p>
            </li>
            <li>
                <p>
                    Assume he is at intersection $u$. Let $A$ be the set of all roads
                    incident to $u$. Let $B$ be the empty set at the initial time, and
                    ${e}$ otherwise where $e$ is the road he just arrived at $u$ through
                    it. Moreover, let $C$ be the set of useless roads incident to $u$. A
                    road $e ^ \prime$ incident to $u$ is called useless if all simple
                    paths starting at $u$ and passing through $e ^ \prime$ have length
                    less than $d$. If $A - (B \cup C)$ is not empty, one road of this
                    set is chosen randomly. Otherwise, the road $e$ is chosen again.
                </p>
            </li>
        </ol>
        <p>
            Arman doesn''t care about walking a little bit longer as long as he knows
            regardless of his random choices, he will eventually reach home after
            passing through at most $10 ^ 9$ roads. He wants to purchase the cheapest
            flashlight for that purpose. Please help him find the appropriate flashlight
            by which he would be able to reach home.
        </p>
        ',
        '
        <p>
            There are multiple test cases in the input. For each input the first line
            contains an integer $n$, the number of intersections in the village ($2 \le
            n \le 30,000$). Next $n - 1$ lines each contains two integers $a$, $b$
            meaning that there is a road between intersections $a$ and $b$ ($1 \le a, b
            \le n$). Arman''s home is at intersection 1 and his office is at
            intersection $n$. The input terminates with a line containing <code>0</code>
            which should not be processed.
        </p>
        ',
        '
        <p>
            For each test case, output a single line containing the minimum range $d$ of
            a flashlight that guarantees Arman can always reach home after passing
            through at most $10 ^ 9$ roads regardless of his random choices. If Arman
            does not need any flashlight, print <code>0</code>.
        </p>
        ',
        19
    );
