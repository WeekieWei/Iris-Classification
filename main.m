function f = main()


prompt = {'sepal length:','sepal width:','petal length:','petal width:'};
diagTitle = 'Enter the following in cm';

userInput = inputdlg(prompt,diagTitle, [1 50]);

a = str2double(userInput(1));
b = str2double(userInput(2));
c = str2double(userInput(3));
d = str2double(userInput(4));

result = neural_function(a,b,c,d);

if strcmp(result,'Iris-setosa')
    icon = imread('icon/flower1.jpg');
elseif strcmp(result,'Iris-versicolor')
    icon = imread('icon/flower2.jpg');
else
    icon = imread('icon/flower3.jpg');
end

f = msgbox(result,'output','custom',icon);
set(f, 'position', [450 300 150 80]); 
