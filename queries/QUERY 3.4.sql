/* QUERY 3.4 */

select count (a.org_id),
       a.org_name
           
from organisation a join   project b (a.org_id=b.org_id)

where count(DATEPART (yyyy, getdate(b.start_date)) >  10 and
      count(DATEPART (yyyy, getdate(b.start_date))=count(DATEPART (yyyy, getdate(b.start_date))+1)
  
order by count(a.org_id) desc
