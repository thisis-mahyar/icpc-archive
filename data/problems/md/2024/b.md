# Problem B: Divar's Salaries

Amin works in the financial department of Divar company. As part of his responsibilities, he needs to prepare the salary payment list for the company's employees. The salary of each employee is calculated based on a base hourly rate of $x$ Rials. However, the actual pay rate varies depending on the type of working hours:

-   **Normal Working Hours:** Paid at the standard rate of $x$ Rials per hour.
-   **Overtime Hours:** Any hours worked beyond the standard 140 hours per month are compensated at 1.5 times the base rate.
-   **Holiday Hours:** Hours worked on recognized holidays are paid at twice the base rate, regardless of whether they fall within or beyond the standard 140 hours.

Holiday hours always take precedence, and employees are compensated at the doubled rate for these hours, irrespective of the standard working hour limits.

Amin's task is to calculate the total monthly salary for each employee, taking into account their normal hours, overtime hours, and holiday hours. Help Amin determine the payment for all the employees in the company.

### Input

The first line of input contains a single integer $n$ ($1 \le n \le 1000$), representing the number of employees in the company. The following $n$ lines each provide three integers $x$, $k$ and $h$, which describe the details for each employee:

-   $x$ ($100 \le x \le 10 ^ 6$): The hourly wage in Rials, which is always a multiple of 10.
-   $k$ ($0 \le k \le 480$): The total number of hours worked during the current month.
-   $h$ ($0 \le h \le k$): The number of holiday hours worked.

### Output

In the output, print the total monthly payment for each employee on a separate line. The payment must be formatted with commas separating every three digits, starting from the right.
