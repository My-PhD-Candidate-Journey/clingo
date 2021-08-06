#script(python)

from clingo import Number, Function

def main(prg):
    prg.ground([("base", [])])
    # for x in prg.symbolic_atoms:
    #    print (x.symbol, x.is_fact, x.is_external)
    # 1
    prg.assign_external(Function("p", [Number(3)]), True)
    prg.solve()
    # 2
    prg.assign_external(Function("p", [Number(3)]), False)
    prg.solve()
    # 3
    prg.ground([("succ", [Number(1)]), ("succ", [Number(2)])])
    prg.solve()
    prg.ground([("succ", [Number(3)])])
    prg.solve()
#end.

