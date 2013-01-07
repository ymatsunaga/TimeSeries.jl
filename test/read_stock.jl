require("DataFrames")
require("Calendar")
require("UTF16")

using DataFrames
using Calendar
using UTF16

macro smell(food)
 :($food ? 
 println("\33[32mfresh\033[0m ")  :
# println("\33[31mrotten \033[0m\33[36m food \033[0m"))
 println(string($food)))
end

df = read_stock("spx.csv")

@smell typeof(df[1])           == DataArray{CalendarTime,1}
@smell df[nrow(df),7]          == 102.09
@smell df[507,7]               == 102.09
@smell df[507,7]               == 102.0
@smell df[507,7]               == 102.09




# @smell df[nrow(df),1] - df[1,1] == 728 FixedCalendarDuration




