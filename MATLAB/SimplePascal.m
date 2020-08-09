userInput = input('Enter the number of rows desired: ');
number = 1;
fprintf('%d ', number);
while length(number) < userInput
number = [0 number] + [number 0];
fprintf('\n');
fprintf('%d ', number);
end
