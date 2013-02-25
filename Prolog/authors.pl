book(lordoftherings, tolkien).
book(thehobbit, tolkien).
book(warandpeace, tolstoy).

sameauthor(X,Y) :- book(X,Z), book(Y,Z).