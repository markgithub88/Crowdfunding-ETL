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
Select count(cf_id) as backers_count, cf_id
From backers
Group by cf_id
Order by backers_count desc;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

Select first_name, last_name, email, (goal-pledged) as "Remaining Goal Amount"
Into email_contacts_remaining_goal_amount
From campaign as cp
Inner join contacts as ct
On cp.contact_id = ct.contact_id
Where cp.outcome='live'
Order by "Remaining Goal Amount" desc;


Select * from  email_backers_remaining_goal_amount;

--4th query
Select bk.email, bk.first_name, bk.last_name, bk.cf_id,cp.company_name, cp.description, cp.end_date, (cp.goal-cp.pledged) as "Left of Goal"
Into email_backers_remaining_goal_amount
From campaign as cp
Inner join backers as bk
On cp.cf_id = bk.cf_id
Where cp.outcome='live'
Order by  bk.last_name, bk.email, bk.first_name;









































Order by "Remaining Goal Amount" desc;

















-- Check the table


