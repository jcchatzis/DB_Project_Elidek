/* QUERY 3.1 */

select a.program_name
           
from program a
  
order by a.program_id asc

/*------*/

select a.project_title
           
from project a join employer_manages_project b on (a.project_id = b.project_id)
               join employer c on (b.employer_id = c.employer_id)

where a.start_date = (?) and
      a.duration = (?) and
      c.employer_name = (?)
  
order c.project_id asc
