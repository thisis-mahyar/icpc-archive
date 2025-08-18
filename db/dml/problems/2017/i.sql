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
'I',
'Cafe Bazaar',
'
<p>
    Having a heavy load on its servers, Cafe Bazaar keeps a daily log of the
    traffic to its server for performance optimization and statistical purposes.
    The IP addresses in the log for each day is stored in a database either in
    the IP-range format or CIDR format, both explained below.
</p>
<p>
    The IP database software uses a new version of the Internet Protocol
    (IP)called IPv5. IPv5 provides more IP addresses by extending the number of
    address bits from 32 in the IPv4 to 40. Precisely, each IP address in the
    IPv5 is a 40-bits numerical label assigned to each device connected to the
    Internet. Each IP address can be represented as a sequence of 5 numbers,
    called bytes, each having a decimal value ranging from 0 to 255. IP
    addresses are often written in the dot-decimal notation, for example
    "134.172.16.254.1". The notation consists of five bytes of the IP address
    expressed in decimal and separated by periods. Note that in this notation
    the leading zero bytes are not removed. For example, the correct
    representation of an address with numerical value 0 is "0.0.0.0.0".
</p>
<p>
    Classless Inter-Domain Routing (CIDR) is a way of specifying a range of IP
    addresses. A CIDR looks like a normal IP address except that it ends with a
    slash followed by a number. The CIDR $y / x$ in which $y$ is an IP address
    and $x$ is an integer from 0 to 40 (inclusive), shows a range of addresses
    whose $x$ leftmost bits are equal to the $x$ leftmost bits of $y$. The
    remaining bits are free to be either <code>0</code> or <code>1</code>. To
    guarantee a unique representation for each range, the $40 - x$ rightmost
    bits of $y$ should be equal to <code>0</code>.
</p>
<p>
    The IP-range format is another way of specifying a range of IP addresses. A
    range in this format is represented by its first and last address in dot
    decimal notation, separated by a dash (-). The first address is not larger
    than the last address assuming IP addresses are 5-digit numbers in the base
    256.
</p>
<p>
    For example, "128.192.168.200.0/32" is a CIDR in which the first 32 bits (4
    bytes, "128.192.168.200") are the same for all addresses in the range, and
    only the last byte can be different. The same range can be represented in
    the IP-range format by "128.192.168.200.0-128.192.168.200.255".
</p>
<p>
    Due to attracting many customers from all around the world and continuous
    service for many years, the IP database is getting larger and larger. Thus,
    Cafe Bazaar plans to reduce the number of entries in the database by
    representing the existing ranges using the minimum number of CIDRs. The new
    CIDRs should not include any IP address that does not belong to the IP
    database. Your task is to solve this challenging problem.
</p>
',
'
<p>
    There are multiple test cases in the input. For each test case, the first
    line contains an integer $n$, the number of IP ranges ($ 1 \le n \le 100$)
    in the IP database. Each of the next $n$ lines contains an IP range, either
    in the CIDR format or in the IP-range format. The input terminates with a
    line containing <code>0</code> which should not be processed.
</p>

',
'
<p>
    For each test case, print the minimum number of CIDRs which represent the
    whole IP database; followed by the list of CIDRs in an increasing order of
    IP values.
</p>
',
19
);
