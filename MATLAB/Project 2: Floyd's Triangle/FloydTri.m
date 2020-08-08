userInput = input('Enter the number of rows desired: ');
number = 1;
for rowsCounter = 1:userInput
    for numberCounter = 1:rowsCounter
        fprintf('%d ', number);
        number = number + 1;
    end
    fprintf('\n');
end
