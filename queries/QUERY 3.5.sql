/* QUERY 3.5 */
select count(e.first_sc_field_id) appearence_of_pairs, 
       e.first_sc_field_id, 
       e.second_sc_field_id
from (
       select distinct least(c.a_project_id, c.b_project_id) afirst_project_id,        
                       greatest(c.a_project_id, c.b_project_id) bfirst_project_id,    
                       least(c.sc_field_id, d.sc_field_id) first_sc_field_id,         
                       greatest(c.sc_field_id, d.sc_field_id) second_sc_field_id      
       from (
              select a.project_id a_project_id,
                     b.project_id b_project_id,
                     a.sc_field_id
              from scientific_field_project a join scientific_field_project b on (a.sc_field_id = b.sc_field_id and a.project_id != b.project_id)
            ) c join 
            (
              select a.project_id a_project_id,
                     b.project_id b_project_id,
                     a.sc_field_id
              from scientific_field_project a join scientific_field_project b on (a.sc_field_id = b.sc_field_id and a.project_id != b.project_id)
            ) d on (c.a_project_id = d.a_project_id and c.b_project_id = d.b_project_id and c.sc_field_id != d.sc_field_id)  
    ) e                                                                                                                     
group by e.first_sc_field_id,     
         e.second_sc_field_id
order by count(e.first_sc_field_id) desc  
limit 3   
