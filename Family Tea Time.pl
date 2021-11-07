%To Start the system type start.
% Name : - Kavindya Iddamalgoda

:- use_module(library(jpl)).
start :-sleep(0.4),	
		write('-----------------------------------------------------------------'),nl,
		sleep(0.4),
		write('*****************************************************************'),nl,
		sleep(0.2),
		write("###################||| EXPERT SYSTEM |||#########################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write('-----------------------------------------------------------------'),nl,nl,nl,
		
		
        /*write("Hi. How are you? Do you plan make a easy  food for today teatime? First of all tell me your name Please : "),
        read(Housewife),*/
		
		
		interface2.
		
		
       /* hypothesis(Housewife,Food),
        write(Housewife),write(', you '), write(' probably you can make '),write(Food),write('.'),undo,
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.*/
        
        
    symptom(Housewife,flour) :- verify(Housewife," Do you have  flour (y/n) ?").
 
    symptom(Housewife,eggs) :- verify(Housewife," Do you have  eggs(y/n) ?").
  
    symptom(Housewife,sugar) :- verify(Housewife," Do have sugar (y/n) ?").

    symptom(Housewife,oil) :- verify(Housewife," have a oil (y/n) ?").
    
    symptom(Housewife,freshmilk) :- verify(Housewife," Do you have freshmilk (y/n) ?").
    
    symptom(Housewife,salt) :- verify(Housewife," Do you have salt (y/n) ?").
	
    symptom(Housewife,chili_powder) :- verify(Housewife," Do you have a chili_powder (y/n) ?").
 
    symptom(Housewife,curry_powder) :- verify(Housewife," Do you have curry_powder (y/n) ?").
   
    symptom(Housewife,termeric) :- verify(Housewife,"Do you  have termeric (y/n) ?").
  
    symptom(Housewife,butter) :- verify(Housewife,"Do you have butter (y/n) ?").
   
    symptom(Housewife,vanila) :- verify(Housewife," Do you have vanila (y/n) ?").

  symptom(Housewife,yeast) :- verify(Housewife," Do you have yeast (y/n) ?").

  symptom(Housewife,chocolate_buscuits) :- verify(Housewife," Do you have chocolate_buscuits (y/n) ?").

  symptom(Housewife,potatoes) :- verify(Housewife," Do you have potatoes (y/n) ?").

  symptom(Housewife,onion) :- verify(Housewife," Do you have onion (y/n) ?").

symptom(Housewife,garlic) :- verify(Housewife," Do you have garlic (y/n) ?").

symptom(Housewife,ginger) :- verify(Housewife," Do you have ginger (y/n) ?").

symptom(Housewife,salman) :- verify(Housewife," Do you have salman (y/n) ?").

symptom(Housewife,bread) :- verify(Housewife," Do you have bread (y/n) ?").

symptom(Housewife,biscuit_powder) :- verify(Housewife," Do you have biscuit_ powder(y/n) ?").

symptom(Housewife,pepper) :- verify(Housewife," Do you have pepper(y/n) ?").

symptom(Housewife,baking_powder) :- verify(Housewife," Do you have baking_powder(y/n) ?").



	
	/*symptom(_,"Sorry, You can't make Food today...").*/

        
    hypothesis(Housewife,crysphy_potato_bolls) :-
        symptom(Housewife,potatoes),
	symptom(Housewife,buscuit_powder),
	symptom(Housewife,eggs),
	symptom(Housewife,chili_powder),
	symptom(Housewife,ginger),
	symptom(Housewife,garlic),
	symptom(Housewife,pepper),
	symptom(Housewife,oil),
	symptom(Housewife,onion),
	symptom(Housewife,salt).
	
        
    
    hypothesis(Housewife,easy_egg_buns) :-
        symptom(Housewife,flour),
        symptom(Housewife,yeast),
        symptom(Housewife,suger),
        symptom(Housewife,potatoes),
	symptom(Housewife,eggs),
	symptom(Housewife,chili_powder),
	symptom(Housewife,curry_powder),
	symptom(Housewife,termeric),
	symptom(Housewife,pepper).
        
    hypothesis(Housewife,butter_cake) :-
        symptom(Housewife,flour),
        symptom(Housewife,sugar),
	symptom(Housewife,eggs),
	symptom(Housewife,butter),
	symptom(Housewife,vanila),
	symptom(Housewife,baking_powder).
        
    hypothesis(Housewife,chocolate_buscuit_pudding) :-
        symptom(Housewife,chocolate_buscuits),
	symptom(Housewife,freshmilk),
	symptom(Housewife,sugar),
	symptom(Housewife,salt),
	symptom(Housewife,vanila).
	
        
    hypothesis(Housewife,ring_murukku) :-
        symptom(Housewife,flour),
        symptom(Housewife,salt),
	symptom(Housewife,chili_powder),
	symptom(Housewife,oil).

    
    hypothesis(Housewife,seeni_murukku) :-
        symptom(Housewife,flour),
	symptom(Housewife,sugar),
	symptom(Housewife,salt),
	symptom(Housewife,oil).
       
    
    hypothesis(Housewife,doughnut_bolls) :-
        symptom(Housewife,freshmilk),
        symptom(Housewife,butter),
	symptom(Housewife,eggs),
	symptom(Housewife,yeast),
	symptom(Housewife,sugar),
	symptom(Housewife,flour),
	symptom(Housewife,salt).
        
	hypothesis(_,"food. But I'm Sorry, I think you can't make food tody teatime").
	
    response(Reply) :-
        read(Reply),
        write(Reply),nl.
		
ask(Housewife,Question) :-
	write(Housewife),write(', do you'),write(Question),
	/*read(N),
	( (N == yes ; N == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail),*/
	
	interface(', do you',Housewife,Question),
	write('Loading.'),nl,
	sleep(1),
	write('Loading..'),nl,
	sleep(1),
	write('Loading...'),nl,
	sleep(1),
    nl.
	
:- dynamic yes/1,no/1.		
	
verify(P,S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(P,S))).
	 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.


pt(Housewife):- 

		hypothesis(Housewife,Food),
		interface3(Housewife,', you can definetely make ',Food,'.'),
        write(Housewife),write(', you can definetely make '),write(Food),write('.'),undo,end.

end :-
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.

interface(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atom_concat(FAtom,Z,FinalAtom),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- FAMILY TEA TIME EXPERT SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,100], _),
	jpl_call(F, setSize, [700,600], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,FinalAtom], N),
	jpl_call(F, dispose, [], _), 
	write(N),nl,
	( (N == yes ; N == y)
      ->
       assert(yes(Z)) ;
       assert(no(Z)), fail).
	   		
interface2 :-
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- FAMILY TEA TIME EXPERT SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,100], _),
	jpl_call(F, setSize, [700,600], _),
	
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,'Hi. How are you? Do you plan make a easy  food for today teatime? First of all tell me your name please'], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(null)
		->	write('you cancelled'),interface3('you cancelled. ','Thank you ','for use ','me.'),end,fail
		;	write("Hi. How are you? Do you plan make a easy  food for today teatime? First of all tell me your name please : "),write(N),nl,pt(N)
	).
	
	
interface3(P,W1,D,W2) :-
	atom_concat(P,W1, A),
	atom_concat(A,D,B),
	atom_concat(B,W2,W3),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['---FAMILY TEA TIME  EXPERT SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,100], _),
	jpl_call(F, setSize, [700,600], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showMessageDialog, [F,W3], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(void)
		->	write('')
		;	write("")
	).
	
help :- write("To start the expert system please type 'start.' and press Enter key").