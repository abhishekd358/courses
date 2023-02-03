--1 (JOIN-> purpose of JOIN statements is to allow us to pull data from more than one table at a time.)

Try pulling all the data from the accounts table, and all the data from the orders table.
SELECT orders.*, accounts.*
FROM accounts
JOIN orders
ON accounts.id = orders.account_id;
-----------------------------------------------------
Try pulling standard_qty, gloss_qty, and poster_qty from the orders table, and the website and the primary_poc from the accounts table.
SELECT orders.standard_qty,
       orders.gloss_qty,
       accounts.primary_poc,
       accounts.website
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;
-----------------------------------------------------

(ERD -> Entity-relationship diagram)

 PK,Primary Key is always unique.For this database id is PK
 FK,Foreign Key is use to  reference to connect to other Table . Use to show dependency of one table on another 

******** MATCH THE FOLLOWING ********

 Has a unique value for every row in that column. There is one in every table.<-------------------> PRIMARY KEY
The link to the primary key that exists in another table. <-------------------> FOREIGN KEY
The primary key in every table of our example database. <-------------------> id 
A foreign key that exists in both the web_events and orders tables. <-------------------> acount_id
The ON statement associated with a JOIN of the web_events and accounts tables. <-------------------> ON web_events.account_id=accounts.id

******** QUIZ QUESTION ******** 
1.Select all that are true for primary keys.
>There is one and only one of these columns in every table.
>They are a column in a table.

2.Select all that are true of foreign keys.
>They are always linked to a primary key.
>In the above database, every foreign key is associated with the crow-foot notation, which suggests it can appear multiple times in the column of a table.

3.Use the image above to assist you. If we wanted to join the sales_reps and region tables together, how would you do it
>ON sales_reps.region_id = region.id
-----------------------------------------------------

--2 (Alias)
alias is just the first letter of the table name.

example 
SELECT o.*, a.*
FROM orders o
JOIN accounts a
ON o.account_id = a.id


SELECT web_events.*,accounts.*
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.name;
WHERE name = 'Walmart'

SELECT w.occurred_at,w.channel, a.primary_poc
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE name = 'Walmart';

SELECT r.name region, s.name rep, a.name account
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name;

SELECT r.name region, a.name account, 
    o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id;



Mark all the below that are true.
The ON statement should always occur with the foreign key being equal to the primary key.
JOIN statements allow us to pull data from multiple tables in a SQL database.
You can use all of the commands we saw in the first lesson along with JOIN statements.

Select all of the below statements that are true.
Aliasing is common to shorten table names when we start JOINing multiple tables together.

QUIZ QUESTION
Select all of the below that are true.
A LEFT JOIN and RIGHT JOIN do the same thing if we change the tables that are in the FROM and JOIN statements
A LEFT JOIN will at least return all the rows that are in an INNER JOIN.
JOIN and INNER JOIN are the same.
A LEFT OUTER JOIN is the same as LEFT JOIN.


The primary key of the Country table. <-------------------> Country.countryid 
The primary key of the State table. <-------------------> State.stateid
The foreign key that would be used in JOINing the tables. <-------------------> State.countryid


The number of columns in resulting table.  <-------------------> 3
The number of rows in the resulting table.  <-------------------> 6
The number of times countryid 1 will show up in resulting table.  <-------------------> 2
The number of times countryid 6 will show up in the resulting table.  <-------------------> 0
