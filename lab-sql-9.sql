#Create a table rentals_may to store the data from rental table with information for the month of May.
# Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

create table rental_may like rental;

insert into rental_may select * from rental
where rental_date regexp '-05-';

select * from rental where month(rental_date) = 5 and month(return_date) =5;

#Q3 Create a table rentals_june to store the data from rental table with information for the month of June.
#Q4 Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

create table rental_june like rental;

insert into rental_june  select  * from rental
where rental_date regexp '-06-';


#Q5 Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as N_rental_May from rental_may
group by customer_id
order by N_rental_May desc;


#Q6 Check the number of rentals for each customer for June.
select customer_id, count(rental_id) as N_rental_June from rental_june
group by customer_id
order by N_rental_June desc;