select
  LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(error_message, ''|'', ''/''), CHAR(10), '' ''), CHAR(13), '' ''), CHAR(9), '' '') as error_message
from
  dbo.my_table
