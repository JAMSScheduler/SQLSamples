--- Old Value that we are replacing
DECLARE @findString NVARCHAR(MAX) = 'OldValue'

-- Value to replace with
DECLARE @newValue NVARCHAR(MAX) = 'NewValue'

/*
** This lists the Job that will be updated and what it's source will be after the update
 */

SELECT job_name, job_id, source
  from [JAMS].[dbo].[job]
  where PATINDEX('%' + @findstring + '%', [source]) > 0

/*
** This does the actual replace. Note: Keep this commented out until you've run the above
**    portion and verified the results are what you would expect
 */

--UPDATE [JAMS].[dbo].[Job]
--SET [source] = REPLACE(cast(Source as nvarchar(max)),@findString,@newValue)
--WHERE PATINDEX('%' + @findString + '%', [source]) > 0