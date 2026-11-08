%%%% Lecture 1 %%%%
%% -----ex 1 -----
%Type disp('hello world') into the command window. This will display the text in the brackets.
 disp ('hello world')

%% -----ex 2 -----
%The price of an apple in 2018 was 25 cents. In 2019 it increased by 5 cents and in 2020 the price increased by 10%. Use Matlab code to solve this simple problem.
appleCost=.25 
appleCost=appleCost+0.05
appleCost=appleCost*1.10
%% -----ex 3 -----
%Google 'how to square root matlab'. Given that x is 492, make b = the square root of that. 
b=sqrt(492)

%% -----ex 4 -----
%Write a for loop that will display 'hello world' five times
for ii = 1:5 
   disp ('hello world')
end

%% -----ex 5 -----
% One can write:
% if x<5
% do something
% else 
% do something else
% end
% Exploit this to write a script that tells Jenny (disp) to go to dinner if she has 100 euro and stay home if she does not. 
x=80
if x<100
disp('jenny go to dinner')
else 
    disp('Jenny stay home')
end

%% -----ex 6 -----
% Make a version of Jenny's shopping script that runs on your computer
% Save this script with the name JennyGoesShopping
% You can now type JennyGoesShopping into the command line and the script will execute. 
% Q: In the end, which items were bought? 
% Jenny bought 8 items from the list and she didn't bought items 18 and 11.  
JennyGoesShopping


%% -----ex 7 -----
% To make a list of numbers, we write:
% priceList=[12 25 10 20 1 10 15 18 5 11]
% And we would pick the 5th number by writing: pricelist(5)
% 
% Words are trickier for computers. We can write:
% shoppingList=["apple","orange","bread","milk","butter","crackers","carrots","zuchine","pasta","wine"]
% And we would pick the 5th word by writing: shoppingList(5)
% 
% Try to adapt Jenny's shopping script to show the name of this item she bought instead of the cost.
% 
% Save this script – execute from the command line
priceList=[12 25 10 20 1 10 15 18 5 11]
priceList(5)

shoppingList=["apple","orange","bread","milk","butter","crackers","carrots","zuchine","pasta","wine"]
shoppingList(5)

%Variables
jennysMoney=100;
shoppingList =["apple","orange","bread","milk","butter","crackers","carrots","zuchine","pasta","wine"];  %10 items
priceList=[12 25 10 20 1 10 15 18 5 11]
for ii = 1:10 
    disp(ii)
    price = priceList(ii); % index
    if jennysMoney>price
       disp('jenny bought this item')
       shoppingList(ii)
       disp(price)
        jennysMoney=jennysMoney-price;
    end
end