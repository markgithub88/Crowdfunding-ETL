-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
Select backers_count,
cf_id
from campaign
Where outcome = 'live'
order by backers_count desc;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
-- Step 2
SELECT cf_id, COUNT(backer_id) AS "Total Backers"
FROM backers
GROUP BY cf_id
ORDER BY "Total Backers" DESC;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
CREATE TABLE email_contacts_remaining_goal_amount (
	first_name varchar(30)   NOT NULL,
	last_name varchar(30)   NOT NULL,
	email varchar(100)   NOT NULL,
	Remaining_Goal_Amount int
);

Select * From email_contacts_remaining_goal_amount 

Order by "Total Backers" DESC;


-- and the amount left to reach the goal for all "live" projects in descending order. 

CREATE TABLE email_contacts_remaining_goal_amount (
	first_name varchar(30)   NOT NULL,
	last_name varchar(30)   NOT NULL,
	email varchar(100)   NOT NULL,
	Remaining_Goal_Amount int
);

Order by "Total Backers" DESC;


-- Check the table
Select * From email_contacts_remaining_goal_amount 

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
CREATE TABLE email_backers_remaining_goal_amount (
	email varchar(100)   NOT NULL,
	first_name varchar(30)   NOT NULL,
	last_name varchar(30)   NOT NULL,
	cf_id int   NOT NULL,
	company_name varchar(30),
	description varchar(30)
);

-- Check the table

Select * From email_backers_remaining_goal_amount
