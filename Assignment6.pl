
/* Here is a demo of getting the game to start in the compiler, replace the file path with where ever you saved your program */
/*?- ['C:/Users/alexa/OneDrive/Documents/Programming Languages/prolog/Assignment6.pl'].*/
/* Warning: c:/users/alexa/onedrive/documents/programming languages/prolog/assignment6.pl:36:*/
 /*       Singleton variables: [X,Y,Z]*/
/*true.*/

/*?- go().*/
/*Welcome to the peg game!*/
/*Enter you first move, one number at a time*/


/*Here I am making the moves as facts */
moves(0, 1, 3).
moves(0, 2, 5).
moves(1, 3, 6).
moves(1, 4, 8).
moves(2, 4, 7).
moves(2, 5, 9).
moves(3, 6, 10).
moves(3, 7, 12).
moves(4, 7, 11).
moves(4, 8, 13).
moves(5, 8, 12).
moves(5, 9, 14).
moves(3, 4, 5).
moves(6, 7, 8).
moves(7, 8, 9).
moves(10, 11, 12).
moves(11, 12, 13).
moves(12, 13, 14).


/* now I am making my lists */



/* Here is the board. 0's represent empty and 1's represent a peg*/


/* here is some rules for the game */

/*This rule says that a move is legal if it is in the move list or is an opposite of the move list */
legal_move(X, Y, Z) :- moves(X, Y, Z); moves(Z, Y, X).

/* here I play the game until the game is over */

play_game([0], X, Y, Z):-
    write('Game over'),
    nl.

play_game(R, X, Y, Z) :-
    legal_move(X, Y, Z),
    select(Y, R, B),
    write("Here is the current board"),
    nl,
    write(B),
    nl,
    write("Here are the legal moves"),
    nl,
    write("moves(0, 1, 3)"),
    nl,
    write("moves(0, 2, 5)"),
    nl,
    write("moves(1, 3, 6)"),
    nl,
    write("moves(1, 4, 8)"),
    nl,
    write("moves(2, 4, 7)"),
    nl,
    write("moves(2, 5, 9)"),
    nl,
    write("moves(3, 6, 10)"),
    nl,
    write("moves(3, 7, 12)"),
    nl,
    write("moves(4, 7, 11)"),
    nl,
    write("moves(4, 8, 13)"),
    nl,
    write("moves(5, 8, 12)"),
    nl,
    write("moves(5, 9, 14)"),
    nl,
    write("moves(3, 4, 5)"),
    nl,
    write("moves(6, 7, 8)"),
    nl,
    write("moves(7, 8, 9)"),
    nl,
    write("moves(10, 11, 12)"),
    nl,
    write("moves(11, 12, 13)"),
    nl,
    write("moves(12, 13, 14)."), 
    nl,
    write(B),
    write("Enter your next moves"),
    nl,
    write("If you see a false that means you made an illegal move"),
    nl,
    read(F),
    read(M),
    read(L),
    play_game(B, F, M, L).
    

    go():-
        write("Welcome to the peg game!"),
        nl,
        write("Enter you first move, one number at a time"),
        nl,
        read(X),
        read(Y),
        read(Z),
        play_game([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14], X, Y, Z).

