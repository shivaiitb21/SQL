-- #########################  Assessment Test 2  ############################## --

-- Q1. Retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;

-- Q2. List out facility names and costs to members?
SELECT name, membercost 
	FROM cd.facilities;
	
-- Q3. A list of facilities that charge a fee to members?
SELECT * 
	FROM cd.facilities
	WHERE membercost != 0;
	
-- Q4. Produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost?
SELECT facid, name, membercost, monthlymaintenance
	FROM cd.facilities
	WHERE membercost != 0 AND membercost < (1/50.0 * monthlymaintenance);
	
-- Note: provide numerical values in terms of float values

-- Q5. A list of all facilities with the word 'Tennis' in their name?
SELECT * 
	FROM cd.facilities
	WHERE name LIKE '%Tennis%';
	
-- Q6. Retrieve the details of facilities with ID 1 and 5? (Without using OR)
SELECT * 
	FROM cd.facilities
	WHERE facid IN(1,5);
	
-- Q7. Produce a list of members who joined after the start of September 2012?
SELECT * FROM cd.members;
SELECT memid, surname, firstname, joindate
	FROM cd.members
	WHERE joindate>='2012-09-01';
	
-- Q8. Produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.
SELECT DISTINCT(surname)
	FROM cd.members
	ORDER BY surname
	LIMIT 10;
	
-- Q9. Get the signup date of your last member
SELECT joindate 
	FROM cd.members
	ORDER BY joindate DESC
	LIMIT 1;
	
-- Q10. Produce a count of the number of facilities that have a cost to guests of 10 or more.
SELECT COUNT(facid) 
	FROM cd.facilities
	WHERE guestcost >= 10;
	
-- Q11. Produce a list of the total number of slots booked per facility in the month of September 2012.
SELECT facid, SUM(slots)
	FROM cd.bookings
	WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01' 
	GROUP BY facid
	ORDER BY SUM(slots);

-- Q12. Produce a list of facilities with more than 1000 slots booked
SELECT facid, SUM(slots) AS total_slots
	 FROM cd.bookings
	 GROUP BY facid
	 HAVING SUM(slots) > 1000
	 ORDER BY facid;
	 
-- Q13. produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.
SELECT cd.bookings.starttime AS start, cd.facilities.name AS name 
	FROM cd.bookings 
	INNER JOIN cd.facilities
	ON cd.bookings.facid = cd.facilities.facid
	WHERE cd.facilities.facid IN (0,1)
	AND cd.bookings.starttime >= '2012-09-21'
	AND cd.bookings.starttime < '2012-09-22'
	ORDER BY cd.bookings.starttime;
	
-- Note: The date is used for timing i.e. >=2012-09-21 and <2012-09-22 
-- means ---> It records all the entries in the 24 hours of day 2012-09-21

-- Q14.  produce a list of the start times for bookings by members named 'David Farrell'?
SELECT cd.bookings.starttime, cd.members.firstname, cd.members.surname
	FROM cd.bookings
	INNER JOIN cd.members
	ON cd.bookings.memid = cd.members.memid
	WHERE cd.members.firstname='David' AND cd.members.surname='Farrell'
	

	
	