# Problem A: Final Price

Neverland has recently experienced a rapid rise in the inflation rate. The value of money is continuously decreasing, and citizens' purchasing power is lowered daily. The government is trying to control the inflation rate by testing various methods, such as reducing the amount of money in the economy by increasing interest rates and promoting investment, even in purchasing cars to be delivered in an unforeseeable future.

![Image](../../img/2022/a.png)

Despite these efforts, the inflation rate is still above $50 \%$, and the prices are jumping up and down drastically every now and then. The Statistical Center of Neverland provides detailed information on the inflation rate and the average price change over time for a basket of goods commonly purchased by households. However, it is hard to calculate the actual price of a specific good at a given point in time using that information.

The ICPC (International Center for Price Changes) is asking you to help the citizens of Neverland to calculate the prices for their desired goods after a specific period of time. The information provided to you is the initial price of a good at the start ofa time period, and the daily price change for that good over the observed time period.

## Input

The first input line contains an integer $n$ ($1 \le n \le 1000$), indicating the number of days the prices are observed. The second line contains a positive integer indicating the initial price of the desired good on day 1. The next $n - 1$ lines contain $n - 1$ integers showing the daily change in the price of the good, in order from day 2 to day $n$. You can assume that the price of the good is always positive and never exceeds $1,000,000$ in the observed period.

## Output

In the output, print the final price of the good on day $n$.
