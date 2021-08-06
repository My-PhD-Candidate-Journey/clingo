p(0) :- p(3).
p(0) :- not p(0).

p(1) :- p(4).
p(1) :- not p(2), not p(3).

p(2) :- p(5).
p(2) :- not p(3), not p(4).

p(3) :- p(6).
p(3) :- not p(4), not p(5).