SELECT job_name
  from [JAMS].[dbo].[Job]
  where PATINDEX('%FINDTHIS%', [source]) > 0