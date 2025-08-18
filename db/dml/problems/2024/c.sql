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
        'C',
        'GPT DarkDown',
        '
        <p>
            Mahdieh is a developer working on a chatbot for Divar''s open platform (Kenar
            Divar). She wants to use ChatGPT''s API for her chatbot. This means the
            chatbot receives messages from ChatGPT and forwards them to the user. When
            the chatbot asks ChatGPT to generate a message, ChatGPT sends the message in
            chunks to the chatbot. So for each chunk, there is a time when Mahdieh''s
            chatbot receives it, and there is a string it contains.
        </p>
        <p>
            For a smooth user experience, Mahdieh wants her chatbot to simulate
            continuous typing, outputting 1 character per millisecond. Obviously, no
            character can be typed before it is received, so Mahdieh must ensure that
            the current typing character is available for her chatbot before typing it.
            To make the perfect smooth user experience she wants to see in her chatbot,
            the chatbot waits for a while without typing anything, and then starts
            typing non-stop. Now Mahdieh has all the chunks'' information from a
            hypothetical message, and she needs your help to tell her the first time the
            chatbot can start to type.
        </p>
        <p>
            However, ChatGPT (and therefore Mahdieh''s chatbot) applies Darkdown
            formatting to the chunks of text, which includes <strong>bold</strong>, <em>italic</em>,
            <code>inline code</code>, and even emojis! &#128516;
        </p>
        <p>
            So, there are formatting characters in the received message from ChatGPT
            that will not be rendered in the final text. You need to determine only the
            (visible) rendered content for smooth typing. For example, the Darkdown text
            <code>[Let''s] (Code!) :rocket:</code> consists of 24 characters, but its
            rendered text is only 13 characters long: "<em>Let''s</em>
            <strong>Code!</strong> &#128640;".
        </p>
        <p>
            Your task is to determine the earliest time Mahdieh can start typing the
            rendered output for a smooth experience.
        </p>
        ',
        '
        <p>
            The input starts with a line containing a single integer $k$, as the number
            of chunks ($1 \\le k \\le 10 ^ 5$). The next $k$ lines contain the complete
            input message, where every line represents a non-empty chunk. You can assume
            the ChatGPT message does not contain newline characters, and the chunks
            could start or end with spaces. It is guaranteed that the total number of
            characters in all the chunks combined will not exceed $10 ^ 5$, and the
            final rendered message will not be empty. The last line contains $k$
            space-separated integers, $t_1, t_2, \\dots, t_k$, where $t_i$ is the time
            the chatbot receives the $i ^ {th}$ chunk from ChatGPT ($1 \\le t_1 &lt; t_2
            &lt; \\dot &lt; t_k \\le 10 ^ 9$).
        </p>
        <p>
            The ChatGPT message has the following <strong>Darkdown</strong> formatting:
        </p>
        <ul>
            <li>
                <p>
                    <strong>Inline Code Blocks:</strong>
                </p>
                <ul>
                    <li>
                        <p>
                            Inline code is given inside a pair of backtick characters,
                            e.g.`<code>code</code>`. The backtick characters themselves
                            are not rendered in the final output. You can assume there
                            is no backtick characters inside the inline code.
                        </p>
                    </li>
                    <li>
                        <p>
                            Formatting markers inside inline code blocks (like
                            <code>(</code> or <code>\\</code>) are rendered as literal
                            characters and are not parsed as formatting.
                        </p>
                    </li>
                </ul>
            </li>
            <li>
                <p>
                    <strong>Special Characters:</strong>
                </p>
                <ul>
                    <li>
                        <p>
                            In order to render the special characters (<code>(</code>,
                            <code>)</code>, <code>[</code>, <code>]</code>,
                            <code>:</code>, <code>\\</code>, <code>` </code>), it is
                            sufficient to escape them by preceding them with a backslash
                            character (e.g. <code>\\(</code>, <code>\\)</code>,
                            <code>\\[\\]</code>, <code>\\]</code>, <code>\\:</code>, <code>\\\\</code>,
                            <code>\\` </code>).
                        </p>
                    </li>
                    <li>
                        <p>
                            Double backslashes (<code>\\\\</code>) are rendered as a
                            single literal backslash in the visible output.
                        </p>
                    </li>
                    <li>
                        <p>
                            It is guaranteed that every backslash in the input is
                            followed by a special character, except in inline codes and
                            after an escaped backslash (<code>\\\\</code>).
                        </p>
                    </li>
                </ul>
            </li>
            <li>
                <p>
                    <strong>Bold and Italic Formatting:</strong>
                </p>
                <ul>
                    <li>
                        <p>
                            Bold formatting can be applied by enclosing the text with
                            parentheses: <code>(bold)</code>.
                        </p>
                    </li>
                    <li>
                        <p>
                            Italic formatting can be applied by enclosing the text with
                            square brackets: <code>[italic]</code>.
                        </p>
                    </li>
                    <li>
                        <p>
                            It is not permitted to have nested blocks of bold or italic
                            text. Also, a block of text cannot be simultaneously bold
                            and italic. For example, it is not allowed to have <code>[(bold
                            and italic) italic]</code> or <code>((superbold)
                            bold)</code>.
                        </p>
                    </li>
                    <li>
                        <p>
                            Inline codes or emojis are allowed inside a bold or italic
                            text.
                        </p>
                    </li>
                </ul>
            </li>
            <li>
                <p>
                    <strong>Emojis:</strong>
                </p>
                <ul>
                    <li>
                        An emoji is given as a non-empty string of lowercase English
                        letters enclosed within a pair of colons (e.g.
                        <code>:smile:</code>, <code>:rocket:</code>).
                    </li>
                </ul>
            </li>
            <li>
                <p>
                    <strong>Punctuation and Spaces:</strong>
                </p>
                <ul>
                    <li>
                        All standard punctuation marks ( <code>.</code>, <code>,</code>,
                        <code>!</code>, <code>?</code>, <code>''</code>, <code>-</code>,
                        <code>/</code>) and space characters are rendered normally.
                    </li>
                </ul>
            </li>
        </ul>
        <p>
            It is guaranteed that the input adheres strictly to the Darkdown formatting
            rules described above, and the final rendered text is unique.
        </p>
        <p>
            In order to find the answer, you have to consider only the visible
            (rendered) characters, which include:
        </p>
        <ul>
            <li>
                <p>
                    <strong>Plain text:</strong> Al letters, numbers, spaces, escaped
                    special characters, and standard punctuation marks not part of any
                    formatting.
                </p>
            </li>
            <li>
                <p>
                    <strong>Emojis:</strong> Represented as a single conceptual
                    character. For example, <code>: smile:</code> is rendered as
                    &#128516;. Note that the conceptual character for an emoji is ready
                    for typing when the chatbot has received its ending colon
                    (<code>:</code>).
                </p>
            </li>
            <li>
                <p>
                    <strong>Inline Code:</strong> The content inside backtick
                    characters.
                </p>
            </li>
        </ul>
        ',
        '
        <p>
            Output the earliest time Mahdieh''s chatbot can start typing the message such
            that the chatbot prints the whole text smoothly.
        </p>
        ',
        25
    );
