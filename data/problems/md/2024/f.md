# Problem F: I am Sherlocked

Detectives of Scotland Yard, the headquarters of the Metropolitan Police, informed Sherlock Holmes about a cyber attack on the Central Bank by James Moriarty. They have also found that there is a secret code that can stop the attack. According to their top Agent, Moriarty has hidden the code in one of his clients' phonebook. Interestingly, Sherlock has access to this mysterious client!

It is known that each correct phone number has 11 digits and starts with a leading zero digit. Moriarty's client may separate the digits of each phone number with hyphen ("`-`") or space characters. Even the leading zero digit might be missing for some phone numbers in the notebook. For example, phone number "`09163264128`" might be written like "`916 32 64 128`", or even "`- 0916-16-32--64 - 128-`". Sherlock is not aware of the exact content of the phonebook, but due to his previous knowledge, he knows how the owner writes phone numbers.

Sherlock arranged a friendly conversation with the owner of the phonebook in a cafe. Meanwhile, Dr. John Watson, Sherlock's colleague, took the phonebook sneakily. Sherlock instructed Dr. Watson to clean up the phonebook into a new cleaned sequence $C$ of numerical characters in his computer. The sequence is zero-indexed, i.e. the index of the first element is zero. To this end, Dr. Watson should type the phone numbers consecutively (without any non-digit/separating characters) into his computer, in the same order of appearance as in the phonebook. In order to clean the phone numbers, he should remove all non-digit characters and add the leading zero if necessary.

According to their plan, Sherlock is supposed to have an informal conversation with the mysterious client. As soon as he finds any information about the code, he is going to text it to Dr. Watson. To this end, Dr. Watson has already prepared the cleaned sequence $C$ and has put the cursor at the beginning character. This cursor can be placed before any character of $C$. He should wait for Sherlock's instructions to produce the output sequence $S$.

Sherlock assumes that Dr. Watson has made the cleaned sequence $C$ and send one of the following. Instructions based on that:

1. `go` $i$: Move the cursor to the beginning of the $i ^ {th}$ cleaned phone number in $C$. For example, to jump to the first phone number in $C$ he would use "`go 0`".

2. `forward` $i$: Move the cursor forward by $i$ digits.

3. `backward` $i$: Move the cursor backward by $i$ digits.

4. `next` $i$: Write the next $i$ digits starting at the current position into $S$. More specifically, if Dr. Watson's cursor is before position $c$, he should pick digits $c, c + 1, \dots, c + i - 1$ but the position of the cursor remains unchanged.

5. `pick` $i \ j$: If $i < j$, write digits into $S$ from the position $i$ to $j$ ($ i , i + 1 , \dotsc , j $) of the current phone number, which is the one that the digit after the cursor belongs to. Otherwise he should write ($ i , i - 1 , \dots , j $). Again, the position of the cursor remains the same. Note that, $0 \le i , j \le 10$ and "`pick 0 0`" will pick the first digit.

For the sake of any correction, Sherlock may also send the following instruction:

-   `delete` $i$: Delete the last $i$ digits from the end of $S$.

### Input

The input consists of the phonebook's content and Sherlock's instructions. The phonebook contains $n$ phone numbers ($1 \le n \le 1000$), separated by commas or newlines. Each phone number in the phonebook is a string, consisting of 10 or 11 digits (`0-9`) and possibly hyphens ("-") and/or spaces characters. The size of the phonebook, i.e. the number of characters in the phonebook, will not exceed $10 ^ 6$ characters. The list of the phone numbers terminates with a line containing the single character "`#`".

Each of the rest of the following lines contains one of Sherlock's instructions. He will send at most 10 000 instructions. All instruction's arguments are non-negative integers not greater than 20 000. It is guaranteed that all Sherlock's texts are in the form of one of the six mentioned instructions.

### Output

Print the extracted secret code (possibly empty), which is a string of digits. If the extracted secret code has more than l000 digits, just print the first 10 000 first digits. Sherlock might lose his attention and send malfunctioning instruction. He might jump to a non-existing phone number (with "`go`") or send an invalid argument for "`forward`", "`backward`", "`next`", "`pick`", and "`delete`" i.e. the instruction refers to a digit or phone that doesn't exist in cleaned sequence $C$. In such cases you find that Moriarty has succeeded and print "`MIss ME!`" with capital letters.
