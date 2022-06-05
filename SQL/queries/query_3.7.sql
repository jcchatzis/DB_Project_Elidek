/* 3.7. Βρείτε τα top-5 στελέχη που δουλεύουν για το ΕΛ.ΙΔ.Ε.Κ. και έχουν δώσει το μεγαλύτερο ποσό χρηματοδοτήσεων σε μια εταιρεία. (όνομα στελέχους, όνομα εταιρείας και συνολικό ποσό χρηματοδότησης) */


select sum(c.budget) sum_of_budgets,
       a.employer_name,
       d.org_name
from employer a join employer_manages_project b on (a.employer_id = b.employer_id)
                join project c on (b.project_id = c.project_id)
                join organisation d on (c.org_id = d.org_id)
where d.category = 'COMPANY'
group by a.employer_name,
         d.org_name
order by sum(c.budget) desc
limit 5
