qbal
====

A [Q-BAL](http://mirrors.talideon.com/articles/qbal/) interpreter written in
O'Caml.

Why O'Caml? Because I'm refamiliarising myself with the language, and writing
an interpreter for Q-BAL of some kind or another has been on my list for quite
some time. It's also been a very long time since I last wrote a non-trivial
interpreter, so it'd be nice to do something about that too.

I'm going to keep things pretty simple. The parsing step will build an AST, and
the interpreter will simply walk the tree. Nothing complex, and I don't think
I'll bother with some kind of bytecode. After all, it doesn't need to be super
fast.
