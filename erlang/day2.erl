-module(day2).
-export([hash_get/2]).
-export([shopping_list/1]).

hash_get(List, Search) -> lists:foreach(fun({Key, Value}) -> print_if_match(Key, Value, Search) end, List).

print_if_match(Key, Value, Search) -> 
	case Key of
		Search ->
			io:format("~p~n", [Value]);
		_ ->
			io:format("~p~n", ["Not found"])
			% I want to return nothing here, but a space print "32"
			% I also want to say Key "Not found"
	end.

shopping_list(List) -> [{Item, Price * Quantity} || {Item, Quantity, Price} <- List].
