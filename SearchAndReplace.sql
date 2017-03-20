-- Old Value that we are replacing
DECLARE @findString NVARCHAR(MAX) = 'MyOldValue'

-- Value to replace with
DECLARE @newValue NVARCHAR(MAX) = 'MyNewValue'

/*
** This lists the Job that will be updated and what it's source will be after the update
 */
SELECT j.job_name,  t.source as 'Current Source', REPLACE(cast(t.Source as nvarchar(max)),@findString,@newValue) as 'New Source'
FROM [JAMS].[dbo].[JobText] as t
	LEFT OUTER JOIN [JAMS].[dbo].[Job] as j on t.job_id = j.job_id
WHERE PATINDEX('%' + @findString + '%', [source]) > 0
  
  
/*
** This does the actual replace. Note: Keep this commented out until you've run the above
**    portion and verified the results are what you would expect
 */
--UPDATE [JAMS].[dbo].[JobText]
--SET [source] = REPLACE(cast(Source as nvarchar(max)),@findString,@newValue)
--WHERE PATINDEX('%' + @findString + '%', [source]) > 0