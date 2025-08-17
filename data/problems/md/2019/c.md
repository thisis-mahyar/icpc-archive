# Problem C : Valid Emails

This year, many people registered for the internet contest with several email addresses. We want to see how many valid and distinct email addresses registered.

A valid email address consists of a username and a domain name separated by a character '`@`'. A username is a string containing letters (`a-z` and `A-Z`), digits (`0-9`), underscores (`_`), and periods (`.`). Usernames cannot begin or end with a period and cannot contain two consecutive periods. Other than this rule, periods do not matter in email addresses (they can be removed without changing the address). Uppercase and lowercase letters in the usernames are considered the same. So, usernames `AliBaba` and `ali.baba` are considered the same. Usernames should contain 6 to 30 characters, after removing all of its periods.

A valid domain name is a string of length between 3 and 3O (inclusive), consisting of domain parts separated by periods (`.`). A domain name must not start or end with a period. Each domain part is a non-empty string of letters (`a-z` and `A-Z`), digits (`0-9`), and dash (`-`). Uppercase and lowercase letters in the domain names are also considered the same. So, `Foo.bar` is the same as `foo.Bar`, but not the same as `Foo-Bar` or `Foobar`.

## Input

The first line of the input contains a positive integer $n$ ($1 \le n \le 1000$), the number of the registered email addresses. Each of the next $n$ lines contains one email address of length at most 100 and consisting of alphabets, digits, '`@`', '`.`', '`_`', and '`-`'.

## Output

Print a single integer which is the number of distinct email addresses that are valid.
