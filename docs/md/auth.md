# Auth

A user wants to sign in and sign up. So, you need to first specify the info the site needs to store. First, I have to observe the famous sites' info.

## Codeforces

### A. Profile Info

> Paths: mahyar, mahyar -> settings

**Part 1:**

-   Level (newbie, specialist, etc.)
-   Username
-   Full name
-   City, Country
-   Rating
-   Contribution
-   Friend list
-   Email
-   Last visit
-   Registration date
-   Blog entries
-   Comments
-   Photo

**Part 2:**

-   Contest graph (The date and rating of the contest)

**Part 3 (Reports):**

-   Solved problems (number, solved for the last year, solved for the last month, max in a row problem solve, max in a row problem solve for the last year and month)

**Part 4 (Maybe later or never):**

-   General Settings, API, Sidebar, Address, Wallets

### B. Sign up (Register) &rarr; Is done using the real sign up using false email

Cloudflare &rarr; username, email, password, confirm password &rarr; confirm email (click on the link that has been sent you. then you'll be confirmed!)

### C. Sign in (Enter)

Username/Email + Password + Remember me for a month

-   Alternative, use gmail
-   Forgot password? &rarr; Password recovery page &rarr; Enter you Email or handle &rarr; Codeforces sends a link to your email to change the password (No matter if you write username or email. that link will be sent to your email anyway) &rarr; Go to a page to set the new pass containing: password, confirm password

## Atcoder

### A. Profile Info

> Paths: mahyar &rarr; my profile, mahyar &rarr; my profile &rarr; settings &rarr; general settings)

**Part 1:**

-   Country
-   Username
-   Photo
-   Birth year

**Part 2 (general settings):**

-   Affiliation
-   Twitter ID
-   Top coder ID
-   Codeforces ID

**Part 3 (other):**

-   Contest status
-   Competition History
-   Email notifications

### B. Sign up (I did a real sign up using fake email)

-   User name
-   Email
-   Password
-   Confirm Password
-   Country / Region
-   Birth year
-   Affiliation
-   Twitter ID
-   There is Cloudflare, but no email confirmation

### C. Sign in

User name, Password

-   Forgot user?
-   Forgot password?

## Leetcode

### A. Profile Info

> Paths: Profile &rarr; Settings

**Part 1:**

-   name
-   photo
-   gender
-   location (e.g., Iran, East Azerbaijan, Tabriz)
-   Birthday
-   Summary
-   Website
-   Github
-   Linkedin
-   Twitter

**Part 2:**

-   Work (work place)
-   Education (school)

**Part 3:**

-   Technical skills

**Part 4:**

-   Leetcode ID (username)
-   Email
-   Password
-   Social Accounts (Linkedin, Google, Github, Facebook)

**Part 5:**

-   Points, Lab, Privacy, Notifications, Billing, Orders

### B. Sign up

**Step 1:**

-   Username
-   Password
-   Confirm Password
-   Email
-   Cloudflare

**Step 2:**

Survey (What brough you here?, What is your level?, Choose the topics)

**Step 3:**

Confirm the email (just like codeforces)

### C. Sign in

Username/Email
Password
Cloudflare

-   Sign in with google, github, facebook, linkedin
-   Forgot password?

## Final Recap (+ ChatGPT)

|       Info       | Should be? |                                   More info                                   |    Validation    |
| :--------------: | :--------: | :---------------------------------------------------------------------------: | :--------------: |
|     Username     |            |                               Required, Unique                                |                  |
|      Email       |            |                               Required, Unique                                |                  |
|     Password     |            |                               Required, Hashed                                |                  |
| Confirm Password |            |                          Required only on front-end                           |                  |
|    Full name     |            |                                                                               |                  |
|   City/Country   |            | - (We assume everyone is from Iran. Also rather than city, we use university) |                  |
|      Photo       |            |                                                                               |       Yep!       |
| Birth year/date  |            |                                                                               |                  |
|   Other sites    |            |                                                                               |                  |
|      Gender      |            |                                                                               |                  |
|  Summary (bio)   |            |                                                                               |                  |
|    School/Uni    |            |                          - (for uni or city ranking)                          |                  |
|   Level/Rating   |            |                          Number of solved questions                           |                  |
|     Reg date     |            |                                                                               | Yep (only on db) |
|  Email-verified  |            |                                - (only on db)                                 |                  |

You can then add other info to your db

So, the final form (profile) contains: user name (public), email (private), password (only on db), photo (public)

### Sign up

Username, email, password, confirm password

### Sign in

Username, password

### The SQL DDL Script

```sql

CREATE TABLE users (
    id INT AUTO INCREMENT PRIMARY KEY,
    username VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(127) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

```

Notes:

-   All sizes must be 2^n - 1 format
-   You can use BIGINT for id later (not necessary now)
-   Leetcode usernames are 15 chars long and codeforces usernames are 20 chars long
-   for password hash, bcrypt is always 60 chars. but if you are not sure which algorithm to use, write VARHCAR(127)
