%% Ready, Set, Start! 
%shuffle deck of 52 cards by randomly arranging their orders at the start

% initialize deck 
myVals = [2:10, 10, 10, 10, 11]; 
myVals = repmat(myVals, [1,4]);

mySuits=[repmat("Hearts", [1,13]),repmat("Diamonds", [1,13]),repmat("Clubs", [1,13]),repmat("Spades", [1,13])]

myDeck=table(); 
myDeck.vals=myVals';
myDeck.suits=mySuits';
myDeck.cardName=myDeck.vals+ " of "+myDeck.suits

for i = 1:nPlayers 
    myPlayers.name{i}=input("Player "+ i + " name: ", "s");
end 

myPlayers.money = repmat(1000, [nPlayers, 1])

% use randperm function to shuffle, once shuffled cards must be drawn in
% the shuffled order 
playingDeck=myDeck(randperm(height(myDeck)), :);
myPlayers.handVal = cell(nPlayers, 1);
%{
function #2: deal the cards 
draws cards in the order after shuffle and deal 2 cards to each player 
for i=1:nPlayers
    hand = playingDeck(1:2, :); 
    playingDeck(1:2, :) = []; 
    myPlayers.handVal{i} = hand.vals';
end 

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
disp(dealerHand); % reveal dealer's face down card
dealerHandVal = sum(dealerHand) % evaluate value of dealers Hand

% dealer has a choice to hit or stand if their hand is not yet valued at 21 
% idk what to do if the value = 21
while dealerHandVal < 21  

if dealerHandVal < 17 % if the dealer's hand is valued less than 17
    disp ("Hit") % the dealer chooses to hit
                    %^this doesn't have to happen idk if we want it
    updatedDealer = dealCard (x,y) % deal a new card to dealer and output new hand
                                    % have to use the deal function from somewhere else

else %if the dealer's hand is more than 17 but less than 21
    disp("Stand") % the dealer chooses to stand
                    %^doesnt need to happen
    updatedDealer = dealerHand % output the same hand
end

dealerHandVal = sum(updatedDealer) % evaluate the value of the dealer's hand again
end

if dealerHand > 21 & ~(ismember(11, dealerHand)) % dealerHand is greater than 21 and doesn't contain Ace
    disp("Bust") % display bust
                    %^doesnt need to happen
end

if dealerHandVal > 21 & (ismember(11, dealerHand)) % if the dealer's hand is valued higher than 21 and it contains an A, A's value changes to 1
updatedDealer = changeAto1 (dealerHand) % use function "changeAto1"
end

end  

function updatedPlayerHand = changeAto1 (playerHand) %function to change value of A from 11 to 1
index = find (playerHand == 11); % find the position of the card valued at 11 (A)
playerHand (index) = 1; % change the value of the that position to 1
updatedPlayerHand = playerHand; % output the new player hand
end
