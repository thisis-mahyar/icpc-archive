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
        'Parking Theory',
        '
        <p>
            Sharif University has a rectangular parking lot with $n \times m$ spaces for
            cars. Each row and column of the parking lot has entrances at both ends.
        </p>
        <p>
            The parking lot is full and the order in which the cars entered is given for
            each parking space. Specifically, a cell with the number 1 is the first car
            that entered the parking lot, and a cell with the number $n \cdot m$ is the
            last one to enter.
        </p>
        <p>
            Abolfazl has a theory about how cars park in this lot. He believes that any
            car entering the parking lot from a specific side (row or column) moves
            straight until it finds its parking spot and never changes direction.
            Moreover, a car cannot pass through a cell that already contains a parked
            car.
        </p>
        <p>
            Abolfazl wants to count the number of subgrids in the parking lot that
            satisfy this condition. A subgrid is valid if all cars in that subgrid can
            park without violating the above rules, considering only the cars within the
            subgrid.
        </p>
        <p>
            Help Abolfazl determine the number of such valid subgrids.
        </p>
        ',
        '
        <p>
            The first line of input contains two integers $n$ and $m$ ($1 \le n, m \le
            500$), the number of rows and columns of the parking lot. Each of the
            following $n$ lines contains $m$ integers, indicating the order of entry of
            the cars. It is guaranteed that numbers are different between 1 and $n \cdot
            m$.
        </p>
        ',
        '
        <p>
            Print a single integer, the number of valid subgrids in the parking lot.
        </p>
        ',
        25
    );
