SELECT j.job_name, p.param_name, p.default_value
  FROM [JAMS].[dbo].[Param] as p
  left outer join [JAMS].[dbo].[Job] as j on p.job_id = j.job_id
  where PATINDEX('%FINDTHIS%', [default_value]) > 0