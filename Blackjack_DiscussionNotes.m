clear; 
clc;

myVals = [2:10, 10, 10, 10, 11]; 
myVals = repmat(myVals, [1,4]);

mySuits=[repmat("Hearts", [1,13]),repmat("Diamonds", [1,13]),repmat("Clubs", [1,13]),repmat("Spades", [1,13])]

myDeck=table(); 
myDeck.vals=myVals';
myDeck.suits=mySuits';
myDeck.cardName=myDeck.vals+ " of "+myDeck.suits


nPlayers=input("How many players at the table?");
myPlayers = table(); 

for i=1:nPlayers 
    myPlayers.name{i}=input("Player"+i+"name:", "s");
end 

myPlayers.money=repmat(1000, [nPlayers, 1])

%start dealings cards 
playingDeck=myDeck; %need shuffling

playingDeck(1,i)=[];

myPlayer.hand=[playingDeck.vals(1);playingDeck.vals(2)]; 


for i=1:nPlayers
    myPlayers.handVal(i)=playingDeck.vals(1); 
    playingDeck(1,:)=[];
    myPlayers.handVal{i}=[myPlayers.handVal{i}, playingDeck.vals(1)]; 
    playingDeck(1,:)=[];
end 
    
