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
        'F',
        'Hezardastan',
        '
        <p>
            Hezardastan, a leading information technology development group in Iran, has
            launched a new project: a private space telescope with a monetized service
            for taking photos from al known astronomical objects (stars, planets,
            galaxies, constellations, ...). For special research, we need to use this
            service. The research must be done in $k$ consecutive days, numbered 1
            through $k$. Let $S_i$ denote the set of astronomical objects whose photo
            should be taken on the $i$-th day ($1 \\le i \\le k$). We have to specify the
            set $S_i$ separately for each day on the photography website.
        </p>
        <p>
            <img alt = "Image" src = "../../img/2020/f.png">
        </p>
        <p>
            In order to specify a set of astronomical objects, we should enter the name
            of its members. The name of each astronomical object is a non-empty string
            of at most 10 characters. The characters can be the hyphen ($-$), digits
            (<code>0</code> to <code>9</code>), or capital letters (<code>A</code> to
            <code>Z</code>). The website provides limited support of wildcards for
            entering a set of astronomical object names. More specifically, each entered
            string on the website can refer to multiple astronomical objects by having
            at most one asterisk (<code>*</code>), either in its beginning or its end
            (but not both). The asterisk matches any string (including the empty
            string). For example, <code>A*</code> refers to all known objects whose name
            starts with <code>A</code>, while <code>*99</code> refers to all objects
            whose name ends with <code>99</code> (including the name <code>99</code>
            itself if there is an astronomical object with this name).
        </p>
        <p>
            We have to pay 1000 dollars for each photo. In order to reduce the load on
            the service website, Hezardastan has put an additional tax on the data
            entry: we have to pay 1 extra dollar for each string entered to specify a
            set of astronomical objects. So for example, we have to pay 5002 dollars by
            entering the set <code>{A*, *B}</code> if there are 5 astronomical objects
            whose name starts with <code>A</code> or ends with <code>B</code>.
        </p>
        <p>
            Given the name of all the known astronomical objects and the sets $S_1,
            \\dots, S_k$, your task is to find a minimum cost representation for each
            $S_i$.
        </p>
        ',
        '
        <p>
            The input starts with a line containing two space-separated integers $n$ ($1
            \\le n \\le 1000$) and $k$ ($1 \\le k \\le 100$). The second line contains $n$
            space-separated unique strings, as the names of all known astronomical
            objects. The objects are numbered 1 through $n$ in the same order. The next
            $k$ lines specify $S_1, \\dots, S_k$, one set per line. Each line starts with
            $| S_i |$ (size of $S_i$) followed by $| S_i |$ integers, the numbers of the
            objects in $S_i$.
        </p>
        ',
        '
        <p>
            Print a single line for each day in the output. The $i$-th line must start
            with the minimum possible cost to take the photos of the $i$-th day. It
            should then contain a representation of $S_i$ for such a minimum cost
            method. If the representation contains $m$ elements, print the integer $m$,
            followed by the $m$ elements. All the numbers and strings in the line should
            be separated by single space characters. If there are multiple optimum
            representations for a set, you can print any one of them.
        </p>
        ',
        22
    );
