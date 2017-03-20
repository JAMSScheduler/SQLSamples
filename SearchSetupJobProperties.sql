SELECT m.setup_name, d.setup_id, j.job_name, d.job_id
  from [JAMS].[dbo].[SetupD] as d
  join [JAMS].[dbo].[SetupM] as m on m.setup_id = d.setup_id
  join [JAMS].[dbo].[Job] as j on d.job_id = j.job_id
  where PATINDEX('%FINDTHIS%', [d].[agent_node]) > 0