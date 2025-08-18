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
        'World Cup Draw',
        '
        <p>
            The draw for the 2O18 FIFA World Cup took place onFriday, December 1 at the
            State Kremlin Palace in Moscow. The FIFA released the draw procedure a few
            months ago on the official FIFA website, explained below.
        </p>
        <p>
            The 32 qualified finalists are first distributed into four seeding pots
            based on the FIFA ranking for October 2017. Pot 1 contains the host Russia
            and the seven highest ranking teams; the next eight highest ranked teams in
            Pot 2, and so on. Then, teams are drawn into eight groups of four, which are
            labeled from $A$ to $H$. The pots are emptied into groups in order from Pot
            1 through Pot 4. The draw must satisfy the following two rules:
        </p>
        <ol type = "i">
            <li>
                no teams from the same pot can be drawn into the same group.
            </li>
            <li>
                with the exception of UEFA, which has more qualified teams (14)than the
                groups(8), no teams from the same confederation can be drawn in the same
                group. Moreover, at most two teams from UEFA can be drawn in the same
                group.
            </li>
        </ol>
        <p>
            Order groups alphabetically from $A$ to $H$ with $A$ and $H$ respectively
            being the leftmost and rightmost groups. At each step of the draw, the drawn
            team $x$ from Pot $i$ is placed in the first group from left (starting from
            group $A$) not violating rules (i) and (ii) and being possible to distribute
            the remaining teams (not drawn teams so far) of Pot $i$ in the next steps
            without violating rules (i) and (ii). Computer scientists have assured FIFA
            that it is always possible to distribute teams of Pot $i$ into groups
            satisfying rules (i) and (ii), regardless of how the other teams in Pot 1
            through Pot $i - 1$ are distributed into groups.
        </p>
        <p>
            The table below shows the pots. In this table, $x(r, c)$ means that team $x$
            belongs to confederation $c$, and its rank in the FIFA ranking is $r$. You
            are to write a program to simulate the draw and report the groups for the
            given draw order for each pot.

        </p>
        <table>
            <thead>
            <tr>
                <th>Seeding Pot 1</th>
                <th>Seeding Pot 2</th>
                <th>Seeding Pot 3</th>
                <th>Seeding Pot 4</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Russia (65, UEFA)</td>
                <td>Spain (8, UEFA)</td>
                <td>Denmark (19, UEFA)</td>
                <td>Serbia (38, UEFA)</td>
            </tr>
            <tr>
                <td>Germany (1, UEFA)</td>
                <td>Peru (10, CONMEBOL)</td>
                <td>Iceland (21, UEFA)</td>
                <td>Nigeria (41, CAF)</td>
            </tr>
            <tr>
                <td>Brazil (2, CONMEBOL)</td>
                <td>Switzerland (11, UEFA)</td>
                <td>Costa Rica (22, CONCACAF)</td>
                <td>Australia (43, AFC)</td>
            </tr>
            <tr>
                <td>Portugal (3, UEFA)</td>
                <td>England (12, UEFA)</td>
                <td>Sweden (25, UEFA)</td>
                <td>Japan (44, AFC)</td>
            </tr>
            <tr>
                <td>Argentina (4, CONMEBOL)</td>
                <td>Colombia (13, CONMEBOL)</td>
                <td>Tunisia (28, CAF)</td>
                <td>Morocco (48, CAF)</td>
            </tr>
            <tr>
                <td>Belgium (5, UEFA)</td>
                <td>Mexico (16, CONCACAF)</td>
                <td>Egypt (30, CAF)</td>
                <td>Panama (49, CONCACAF)</td>
            </tr>
            <tr>
                <td>Poland (6, UEFA)</td>
                <td>Uruguay(17, CONMEBOL)</td>
                <td>Senegal (32, CAF)</td>
                <td>South Korea (62, AFC)</td>
            </tr>
            <tr>
                <td>France (7, UEFA)</td>
                <td>Croatia (18, UEFA)</td>
                <td>Iran (34, AFC)</td>
                <td>Saudi Arabia (63, AFC)</td>
            </tr>
            </tbody>
        </table>
        ',
        '
        <p>
            There are multiple test cases in the input. Each test case consists of 4
            lines. The $i$th line presents all 8 team names (as written in the table) in
            Pot $i$ in the draw order (from left to right). Team names are separated by
            "," and there may exist a space before or after team names. In all test
            cases, Russia is the first drawn country in Pot1 due to the old tradition of
            placing the host country in group $A$. The input terminates with
            <code>End</code> that should not be processed.
        </p>
        ',
        '
        <p>
            For each testcase, simulate the draw based on the given draw order, and
            compute the weight of each group which is the summation of team ranks in
            that group. For each group, print the group name(an uppercase letter)and its
            weight separated bya space in one line. This must be done in the increasing
            order of the weights from the strongest group (the group with the minimum
            weight) to the weakest group (the group with the maximum weight). In the
            case of a tie, print based on the alphabetical order of group names.
        </p>
        ',
        19
    );
