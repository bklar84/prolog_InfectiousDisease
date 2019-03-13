% README for diagnoser.pl
% Author: Brian Klarman
% Class: CS 355 Online, CRN: 24735, Professor: Morris
% Description:
%	This program allows a user to enter their current symptoms and ending their list with 'done'.
%	The user then enters the locations they have visited in the past six months, ending with 'done'.
%	
%	The database is then queried for a list of tests which are based on diseases that have the user's
%	symptoms. The user will respond to the tests with either 'positive' or 'negative'. Once test
%	results have been entered, the user will be presented with a list of possible diseases they have
%	contracted and the treatments associated with them.
%	
%	The disease facts are stored in:
%		symptoms.pl
%		tests.pl
%		locales.pl
%		treatments.pl
%
%	How to use:
%		1) View the splash screen by typing 'run.'
%		2) If you need additional help, type 'imlost'
%		3) Begin the diagnostic tool by typing 'main.'