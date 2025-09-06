select employees.name,EmployeeUNI.unique_id from
 employees left join EmployeeUNI on EmployeeUNI.id = employees.id 
