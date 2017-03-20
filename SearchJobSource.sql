SELECT j.job_name

  FROM [JAMS].[dbo].[JobText] as t

  left outer join [JAMS].[dbo].[Job] as j on t.job_id = j.job_id

  where PATINDEX('%FINDTHIS%', [source]) > 0