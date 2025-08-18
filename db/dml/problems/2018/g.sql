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
        'G',
        'Relay Race',
        '
        <p>
            In a relay running race, $n$ athletes of a team are initially positioned
            along a road. Specifically, the initial position of athlete $i$ is $x_i$ (in
            meters from an origin). This athlete can run up to $v_i$ meters per second.
            Initially, each athlete holds a baton.
        </p>
        <p>
            The race starts by blowing a whistle and finishes when any athlete of the
            team holds all the batons. In any moment during the race, each athlete can
            run along the road (in any of the two directions), or simply stop. When two
            athletes meet at the same position, each of them can pass all batons she or
            he holds to the other athlete.
        </p>
        <p>
            You are the coach of the team. Your task is to find the shortest possible
            time the team can finish the race.
        </p>
        ',
        '
        <p>
            In the first line of input, a single integer $n$ ($1 \le n \le 10 ^ 5$) is
            given. In each of the next $n$ lines, two space-separated integers $x_i$ ($0
            \le x_i \le 10 ^ 6$), and $v_i$ ($1 \le v_i \le 10 ^ 6$) are given.
        </p>
        ',
        '
        <p>
            In the only line of the output, print a single number, the minimum amount of
            time the team can finish the race (in seconds). Your answer is considered to
            be correct if it has an absolute error of at most $10 ^ {-6}$.
        </p>
        ',
        20
    );
