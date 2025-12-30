(1)
### Retrieve booking information along with:
- Customer name
- Vehicle name
- Concepts used: INNER JOIN
```
select
  booking_id,
  name as customer_name,
  vehicle_name,
  start_date,
  end_date,
  bookings.status
from
  bookings
  inner join vehicles on bookings.vehicle_id = vehicles.vehicle_id
  inner join users on bookings.user_id = users.id;
```
(2)
### Find all vehicles that have never been booked.
- Concepts used: NOT EXISTS
```
select
  *
from
  vehicles
where
     status != 'rented'
;
```

(3)
### Retrieve all available vehicles of a specific type (e.g. cars).
- Concepts used: SELECT, WHERE
```
select
  *
from
  vehicles
where
  status = 'available'
  and
type
  = 'car';
  ```

(4)
### Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
- Concepts used: GROUP BY, HAVING, COUNT
```
select
  vehicle_name,
  count(*)
from
  vehicles
group by
  vehicle_name
having
  count(*) > 2;
  ```