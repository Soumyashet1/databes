SELECT e.expense_id,t.travel_name,ep.first_name,e.expense_date,e.expense_time,
ec.expense_category_name,e.expense_desc,e.expense_price,es.expense_status_name
FROM expenses e,expense_statuses es,travels t, travels_assigned ta,employees ep,expense_categories ec
WHERE e.expense_status_id=es.expense_status_id
AND e.expense_travel_assigned_id=ta.travel_assigned_id
AND ta.travel_id=t.travel_id
AND ta.employee_id=ep.employee_id
AND e.expense_category_id=ec.expense_category_id
ORDER BY e.expense_id
