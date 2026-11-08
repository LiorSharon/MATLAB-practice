% Variables ex 6
jennysMoney=100;
priceList =[12 25 10 20 1 10 15 18 5 11];  %10 items
for ii = 1:10 
    price= priceList(ii); % index
    if jennysMoney>price
        disp('jenny bought the item that cost')
        disp(price)
        jennysMoney=jennysMoney-price;
    end
end


