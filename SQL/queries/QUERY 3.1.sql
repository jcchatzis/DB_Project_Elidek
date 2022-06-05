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
  
order by a.project_id asc


/*------*/
select a.researcher_last_name,
       a.researcher_first_name,
       a.researcher_id

from researcher a join res_works_on_project b on (a.researcher_id=b.researcher_id)
                  join project c on (b.project_id=c.project_id)
  
where c.project_title = (?)

group by a.researcher_last_name, a.researcher_first_name, a.researcher_id

order by a.researcher_id asc
