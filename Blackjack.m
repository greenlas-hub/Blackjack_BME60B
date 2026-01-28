%% Ready, Set, Start! 
%shuffle deck of 52 cards by randomly arranging their orders at the start
% use randperm function to shuffle, once shuffled cards must be drawn in
% the shuffled order 

%{
function #2: deal the cards 
draws cards in the order after shuffle and deal 2 cards to each player 
%}

% Blackjack Pseudocode 


clear; clc;

%% Player input initialization 
%Need inputs, how many players and initial $$$
%Need larger loop for how long to play 
%Initialize player variables 

%% Game initialization 
myDeck = innitDeck(); 
%% Main loop 
while(number of players>0 or players decide to end)
% take initial bets
    playingDeck = shuffleDeck(myDeck); 
% create loop for dealing cards 
% display information in command window, needs to be for players and dealer

% hit/stand logic, use functions from below 
end 
%% my local functions
function shuffledDeck = shuffleDeck(myDeck)
%use randperm to shuffle deck, numbers 1:52
%return shuffled deck 
end 

function myDeck = innitDeck()
%create a loop for each suit 
%should my deck be an array, tables, structures
%Align card values, suits 
end 

function [updatedPlayer, updatedDeck]=dealCards(shuffledDeck, player)
%think about player variable 
% update player hand, calculate player hand value 
% if hand> 21 and contains an Ace -> make the Ace Value = 1
% use the evaluate Hand function here 
% update shuffledDeck to remove cards dealt shuffledDeck(1) =[]; 
end 

function [player, handValue] = evaluateHand(player, dealerHand)
%need logic to determine if player wins against dealer 
end

function updatedDealer =  dealerLogic(dealerHand)

% need logic here to determine if the dealer should hit or stand 
% while loop, dealer hand < 17 dealer needs to hit ;)
end  