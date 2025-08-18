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
        'K',
        'Monster Warehouse',
        '
        <p>
            Mike and Sally work in the warehouse of Monster Inc. as storekeepers. Their
            daily tasks are to process incoming requests and update the inventory of the
            Warehouse. Requests only include buying, selling, unpacking, and packing
            containers. The warehouse includes goods and containers and has unlimited
            space. A container may contain goods or other containers as sub-containers.
        </p>
        <p>
            <img alt = "Image" src = "../../img/2023/k.png">
        </p>
        <p>
            The exact format of the requests is given below.
        </p>
        <ul>
            <li><code>BUY &lt;CONTAINER_DESCRIPTION&gt;</code></li>
            <li><code>SELL &lt;CONTAINER_ID&gt;</code></li>
            <li><code>UNPACK &lt;CONTAINER_ID&gt;</code></li>
            <li><code>PACK &lt;CONTAINER_DESCRIPTION&gt;</code></li>
        </ul>
        <p>
            Each container which is not inside any other container is uniquely
            identified by a positive integer ID. Assigning IDs to containers is done
            sequentially and started from 1. An ID is valid if and only if its container
            exists in the warehouse, otherwise it is invalid.
        </p>
        <p>
            A container description is enclosed in parentheses and lists the contents,
            which can be either goods or sub-containers. A good is identified
            exclusively by its name, which consists of non-case-sensitive English
            letters. Multiple units ofa good may be available. To denote quantities,
            place a positive integer ''N'' before or after the good name (separated by one
            whitespace), where $N &lt; 100$ is the number of the good. For example,
            <code>((tomato, potato), 4 celery, (wood, (silk 3, banana 2)))</code>
            describes a container with four units of celery and two sub-containers.
        </p>
        <p>
            The description of each request is as follows:
        </p>
        <ul>
            <li>
                <p>
                    <code>BUY</code>: A new container is transferred into the warehouse
                    and an ID is assigned to it.
                </p>
        </li>
            <li>
                <p>
                    <code>SELL</code>: An existing container with the given ID is ship
                    out and its ID becomes invalid.
                </p>
        </li>
            <li>
                <p>
                    <code>UNPACK</code>: All goods and sub-containers are extracted from
                    the container and added to the warehouse. Moreover, the
                    sub-containers become new containers and get their own ID. The
                    assignment of IDs to the new containers is based on the order of
                    their appearance in the container description (from left to right).
                    For instance, considering the following two lines as the first
                    requests, results in adding one unit of celery and adding three
                    containers with IDs 2, 3, and 4 to the warehouse and ID 1 becomes
                    invalid.
                </p>
                <pre>
                    <code>
                    BUY (celery, (Banana), (Celery), (celery))
                    UNPACK 1
                    </code>
                </pre>
            </li>
            <li>
                <p>
                    PACK: Goods specified in a <code>PACK</code> request are grouped
                    into a new container, which is then assigned the next available ID.
                </p>
            </li>
        </ul>
        <p>
            Mike and Sulley process the requests in the order they are received. Any
            request with an invalid container ID must be discarded. Moreover, for <code>PACK</code>
            request they need to check if there exists enough units of each good in the
            warehouse.
        </p>
        <p>
            Roz, the agent of Monster Inc. has told Mike once "I''m watching you,
            Wazowski. Always watching. Always.", She rolled her desk into their office
            and asked for requests and reports. She is looking for every detail. She is
            reviewing each request and might ask a few questions. Her questions might be
            each of the following types:
        </p>
        <ul>
            <li>
                <code>? COUNT &lt;good&gt;</code>: How many units of the given good
                exist outside of containers?
            </li>
            <li>
                <code>? CONTAINS &lt;good&gt;</code>: How many containers with ID have
                the given good,i.e. the good is in the container or there is a recursive
                sub-container which contains that good.
            </li>
            <li>
                <code>? MIN &lt;good&gt;:</code> At least how many containers should be
                unpacked to reach one unit of the good. If it is impossible, the answer
                should be <code>-1</code>.
            </li>
        </ul>
        <p>
            Mike and Sully are expected to answer these queries using just one integer.
        </p>
        <p>
            Before helping Mike and Sully, read samples carefully.
        </p>
        ',
        '
        <p>
            The input consists of $n$ requests or queries from Roz while she is
            reviewing ($1 \\le n \\le 5000$);each appears in a separated line. The name of
            each good is limited to 100 characters. Each container description might
            have at most 5000 characters and the input size is less than $10 ^ 6$
            characters.
        </p>
        ',
        '
        <p>
            Each line of the report is associated with a request or Roz''s questions.
            After each <code>BUY</code>, <code>SELL</code>, <code>PACK</code>, <code>UNPACK</code>
            request, you should print <code>OK</code>, if the request is not discarded.
            Otherwise, print DISCARD. If the request is UNPACK, after printing OK, you
            should print the number of containers added to the warehouse (read samples
            for more details). For each Roz''s query, print just one integer in a line.
        </p>
        ',
        24
    );
