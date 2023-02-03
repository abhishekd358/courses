--1 (Introduction)
data cleaning is the task of cleaning up raw data to make it usable and ready for analysis.
80% of data scientists time is spent preparing the data and only 20% is spent building models.

key steps consider while data cleaning:
What data do you need?: Review what data you need to run an analysis and solve the problem at hand.
What data do you have?: Take stock of not only the information you have in your dataset today but what data types those fields are. Do these align with your data needs?
How will you clean your data?: Build a game plan of how you’ll convert the data you currently have to the data you need. What types of actions and data cleaning techniques will you have to apply? Do you have the skills you need to go from the current to future state?
How will you analyze your data?: Now, it’s game time! How do you run an effective analysis? Build an approach for analysis, as well. And visualize your plan to solve the problem. Finally, remember to question “so what?” at the end of your results, which will help drive recommendations for your organization.


Data cleaning Methods
three types of data cleaning techniques: 
                              parsing information, 
                              returning where information lives,
                              changing the data type of the information.


--(LEFT,RIGHT,SUBSTR)

Left: Extracts a n of characters from a string starting from the left
Right: Extracts a n of characters from a string starting from the right
Substr: Extracts a substring from a string (starting at any position)

Syntax:
LEFT(string, no_of_characters)
RIGHT(string, no_of_characters)
SUBSTR(string,position,length)

Q 1. Use the accounts table and a CASE statement to create two groups: one group of company names that start with a number and the second group of those company names that start with a letter.
What proportion of company names start with a letter?
SELECT SUM(Letter),SUM(Num)
FROM(
    SELECT name,
       CASE 
           WHEN LEFT(name,1) IN ('1','2','3','4','5','6','7','8','9','0') THEN 0
           ELSE 1 END AS Letter ,
       CASE
           WHEN LEFT(name,1) IN ('1','2','3','4','5','6','7','8','9','0') THEN 1
           ELSE 0 END AS Num    
FROM accounts) t1;


--(CONCAT)
Adds two or more expressions together

CONCAT(string1, string2, string3)


--(CAST)
CAST: Converts a value of any type into a specific, different data type
CAST(expression AS datatype)

--(Advance Functions)
POSITION: Returns the position of the first occurrence of a substring in a string
POSITION(substring IN string)

STRPOS: Converts a value of any type into a specific, different data type
STRPOS(string, substring)

COALESCE: Returns the first non-null value in a list.
COALESCE(val1, val2, val3)