SELECT f.folder_name, j.job_name, p.param_name, v.variable_name
FROM param p
JOIN Job j on p.job_id = j.job_id
JOIN Folder f on j.folder_id = f.folder_id
JOIN Variables v on p.variable_id = v.variable_id
WHERE v.variable_id <> 0