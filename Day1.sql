-- 1. HOW MANY ACTORS ARE THERE WITH THE LAST NAME WAHLBERG
select first_name, last_name
from actor 
where last_name= 'Wahlberg'
-- ANSWER: 2

-- 2. HOW MANY PAYMENTS WERE MADE BETWEEN $3.99 AND $5.99
select count(amount)
from payment 
where amount >3.99 and amount< 5.99


--ANSWER: 3,230

--3. What film does the store have the most of? (search in inventory)
select * from inventory;
select count(inventory_id),film_id 
from inventory 
group by film_id
order by count desc
--ANSWER: 8

--4. How many customers have the last name ‘William’?
select * from customer
where last_name = 'William';

select * from customer
where last_name like 'W%'
--ANSWER: None? I've have one 'Williams'...  a 'Wilson'... 'Willis'


--5. What store employee (get the id) sold the most rentals?
select count(rental_id), staff_id
from rental
group by staff_id

--ANSWER: staff_id 1


--6. How many different district names are there?
select count( distinct district)
from address
--ANSWER: 378


--7. What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id),film_id
from film_actor
group by film_id
order by count desc
--ANSWER: film_id 508, 15 actors

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select * from customer
where last_name like '%es'

--ANSWER: 21

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select * from payment;
select count( rental_id),amount  from payment
where customer_id>=380
and customer_id<=430
group by amount
order by count desc;
--ANSWER: 3

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select * from film;
select distinct rating from film;
select count(film_id), rating from film
group by rating
order by count(film_id);

--ANSWER: 5 distinct ratings PG-13 had the most titles with 223

