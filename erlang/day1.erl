-module(day1).
-export([count_to_10/1]).
-export([num_words/1]).
-export([error/1]).

count_to_10(10) -> io:fwrite("10\n");
count_to_10(X) -> count_to_10(X+1),
	io:write(X), 
	io:fwrite("\n").

num_words(String) -> count_words(String, 1).

count_words(String, Count) -> 
	[Head | Tail] = String, 
	case Head of
		32 -> count_words(Tail, Count + 1);
		46 -> io:fwrite("\n"), io:write(Count), io:fwrite("\n");
		_ -> count_words(Tail, Count)
	end.



error({error, Message} ) ->
		io:fwrite("Error:\n"),
		io:fwrite(Message),
		io:fwrite("\n");
error(success) -> io:write(success),
		io:fwrite("\n").