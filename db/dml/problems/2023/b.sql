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
        'Hezardastan''s Annual Report',
        '
        <p>
            Hezardastan, a giant among Iranian IT holding groups, houses several
            innovative companies such as Cafebazaar, Divar, and Balad. The annual report
            of the holding consists of $n$ chapters, each dedicated to a company under
            Hezardastan''s umbrella. The chapters in the report vary in length and occupy
            a certain number of pages. We want to compile all $n$ chapters into a PDF
            document that will be printed double-sided on A4 paper sheets. However, for
            aesthetic reasons, we want to avoid having pages from two different chapters
            printed on the same paper sheet. To ensure each chapter begins on a fresh,
            odd-numbered page, we plan to strategically insert an extra blank page after
            each chapter that has an odd number of pages. Now, we need to know the
            minimum number of A4 paper sheets needed to print the entire holding company
            report?
        </p>
        ',
        '
        <p>
            The input consists of two lines. The first line contains a single integer
            $n$ ($1 \le n \le 100$), the number of chapters in the report. The second
            line contains $n$ space-separated integers, denoting the number of pages in
            each chapter. All numbers in the input are positive integers and are at most
            100.
        </p>
        ',
        '
        <p>
            The output should consist of a single line containing the total number of A4
            paper sheets needed to print the entire annual report.
        </p>
        ',
        24
    );
