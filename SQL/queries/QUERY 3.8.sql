--QUERY 3.8

/* 3.8. Βρείτε τους ερευνητές που εργάζονται σε 5 ή περισσότερα έργα που δεν έχουν παραδοτέα (όνομα ερευνητή και αριθμός έργων). */


select count(a.researcher_id) total_projects,
       a.researcher_last_name,
       a.researcher_first_name
from researcher a join res_works_on_project b on (a.researcher_id = b.researcher_id)
                  join project c on (b.project_id = c.project_id)
where c.date_end >= now() and
      not exists (
                    select '1'
                    from deliverable
                    where project_id = b.project_id
                 )
group by a.researcher_last_name, a.researcher_first_name
having count(a.researcher_id) >= 5
order by count(a.researcher_id) desc
