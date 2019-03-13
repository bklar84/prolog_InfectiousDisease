/*
	Title: Infectious Disease Diagnoser
	Author: Brian Klarman
	Class: CS355
	Professor: Morris
	
	This program allows a user to enter their current symptoms and ending their list with 'done'.
	The user then enters the locations they have visited in the past six months, ending with 'done'.
	
	The database is then queried for a list of tests which are based on diseases that have the user's
	symptoms. The user will respond to the tests with either 'positive' or 'negative'. Once test
	results have been entered, the user will be presented with a list of possible diseases they have
	contracted and the treatments associated with them.
	
	The disease facts are stored in:
		symptoms.pl
		tests.pl
		locales.pl
		treatments.pl
	
	General use:
		1) View the splash screen by typing 'run.'
		2) If you need additional help, type 'imlost'
		3) Begin the diagnostic tool by typing 'main.'
*/

:- include('symptoms.pl').
:- include('tests.pl').
:- include('locales.pl').
:- include('treatments.pl').

findDisease(X, [Head|Tail]):-
	findDisease(X,Tail),symptom(X,Head).

findDisease(_X, []):-
	!.

listPossible([Head|Tail]):-
	findall(X,findDisease(X, [Head|Tail]),L),
	printResults(L).

listPossible([]):-
	!.

printResults([Head|Tail]):-
	write('===================================================='),nl,
	write('Possible disease:'),nl,
	tab(4),write(Head),nl,nl,
	(locale(Head,_) -> 
		findall(B,locale(Head,B),C),
		write("Known contraction locations:"),nl,
		printList(C),nl
	; !),
	write("Tests to conduct:\n"),
	findall(X,test(Head,X),L),
	printList(L),nl,
	write("Treatments to apply to patient:"),nl,
	findall(Y,treatment(Head,Y),Z),
	printList(Z),
	write('===================================================='),nl,nl,
	printResults(Tail).

printResults([]):-
	!.

printList([Head|Tail]):-
	tab(4),write(Head),
	nl,
	printList(Tail).

printList([]):-
	!.

getSymptoms(X, L):-
	findall(Y,symptom(X,Y),L).
	
getDiseaseList(L, X):-
	findall(Y,symptom(Y,X),L).
	
allSymptoms(X):-
	getSymptoms(X,L),
	printList(L).
	
allSymptoms:-
	findall(X,symptom(_,X),L),
	sort(L,Z),
	printList(Z).
	
allDiseases(X):-
	getDiseaseList(L,X),
	printList(L).
	
allDiseases:-
	findall(X,symptom(X,_),L),
	sort(L,Z),
	printList(Z).

imlost :-
	write('\n************************************************'),nl,
	write('*******  How to use the diagnostic tool  *******'),nl,
	write('************************************************'),nl,
	write('\nIn the main prompt, enter a symptom followed by a period.'),nl,
	write('Keep entering your symptoms and type \'done.\' to finish.'),nl,
	write('\nPerform the same steps for the places you have visited.'),nl,
	write('\nAnd finally, enter either \'positive.\' or \'negative.\' for each test result.\n'),nl,
	write('\n*******************************'),nl,
	write('*******  Quick queries  *******'),nl,
	write('*******************************'),nl,
	write('\n  (1) To list all known diseases, type \'allDiseases.\''),nl,
	write('  (2) To list all known symptoms, type \'allSymptoms.\''),nl,
	write('  (3) To list all known symptoms associated with a disease,\n\ttype \'allSymptoms(diseaseName).\''),nl,
	write('  (4) To list all known diseases associated with a symptom,\n\ttype \'allDiseases(symptomName).\''),nl.

run :-
	write('===================================================='),nl,
	write('==========  Infectious Disease Diagnoser  =========='),nl,
	write('===================================================='),nl,
	write('For help querying, type \'imlost.\''),nl,
	write('To begin diagnosis, type \'main.\''),nl.
	

main :-
	write('\n===================================================='),nl,
	write('==========  Infectious Disease Diagnoser  =========='),nl,
	write('===================================================='),nl,
	write('\nEnter your symptoms and then type \'done.\' when finished\n.'),nl,
	patientSymptoms(List),
	%patientLocations(List2).
	listPossible(List).

patientSymptoms([Symptom|List]) :-
	write('Enter symptom: '),nl,
	read(Symptom),
	dif(Symptom, done),
	patientSymptoms(List).

patientSymptoms([]).

patientLocations([Location|List2]) :-
	write('Please list locations the patient has visited within the last 6 months please enter Done when finished.'),nl,
	read(Location),
	dif(Location, done),
	patientLocations(List2).

patientLocations([]).