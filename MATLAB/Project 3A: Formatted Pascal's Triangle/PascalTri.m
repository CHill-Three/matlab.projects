userInput = input('Enter the number of rows desired: ');
number = 1;

for b = userInput + 1 :-1:1
fprintf(' ') ;
end
fprintf('%d ', number);
fprintf('\n') ;

while length(number) < userInput
for n = userInput : -1:1
    
    for m = n :-1:1
        fprintf(' ') ;
    end
    
    number = [0 number] + [number 0];
    fprintf('%d ', number);
    fprintf('\n');
end
    fprintf('\n') ;
end
