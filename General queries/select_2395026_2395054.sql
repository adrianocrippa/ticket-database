--SET SEARCH_PATH
SET SEARCH_PATH to showbizz;

--1st QUERY
--SELECT ALL EVENTS IN MONTREAL AND SHOW THE CATEGORY
--SHOW NAME, VENUE, CITY, DATETIME AND CATEGORY
SELECT event_name, venue, date_time, category_name
FROM event
JOIN category ON event.category_id = category.category_id
WHERE city ILIKE 'montreal'


--2ND QUERY
--SELECT ALL USERS WHO PAID PAID BY VISA TO SEND A COMMUNICATION
--SHOW NAME, AMOUNT, DATETIME AND EMAIL

SELECT first_name, last_name, ammount, datetime, email
FROM payment
JOIN "user" ON payment.user_id = "user".user_id
WHERE payment_method ILIKE 'vISA'



--3RD QUERY
--SHOW EVENTS SPONSORED BY TESLA
SELECT event_name, e.sponsor_id, company_name AS nameofsponsor FROM sponsor
JOIN event e on sponsor.sponsor_id = e.sponsor_id
WHERE e.sponsor_id = 2

--4th QUERY
--SELECT USERS WHO OPEN A DIGITAL WALLET
--SHOW THE CONTENT OF THE WALLET
SELECT first_name, last_name, wallet_nickname, ticket_id FROM wallet
         JOIN "user" u on u.user_id = wallet.user_id
WHERE wallet_id <> 0;

--COMPLEMENT OF 4TH QUERY
--SHOW ORIGINAL OWNER TICKET ID #9
(SELECT first_name, last_name FROM ticket
         JOIN "user" u on u.user_id = ticket.user_id
WHERE ticket_id = 9);

--UPDATE THE OPERATION OF TRANSFER THE TICKET
UPDATE ticket SET user_id = 3 WHERE user_id = 2;

--SHOW THE NEW OWNER OF TICKET #9
SELECT first_name, last_name FROM ticket
JOIN "user" u on u.user_id = ticket.user_id
WHERE ticket_id = 9;


--5th QUERY
--SHOW CATEGORY WHO SELL THE BIGGER AMOUNT OF TICKETS