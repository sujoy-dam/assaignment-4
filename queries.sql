-- (1)
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

-- (2)
select
  *
from
  vehicles
where
     status != 'rented'
;

-- (3)
select
  *
from
  vehicles
where
  status = 'available'
  and
type
  = 'car';

-- (4)
select
  vehicle_name,
  count(*)
from
  vehicles
group by
  vehicle_name
having
  count(*) > 2;
