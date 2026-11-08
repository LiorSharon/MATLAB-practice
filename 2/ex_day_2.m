%%%% Lecture 2 %%%%
%% -----ex 1 -----
% Write a script that 1) loads an image. 2) shows the image
myimage=imread('cat1.jpg')
figure
imshow(myimage)
%% -----ex 2 -----
% use the imresize function, this would make the image half the size:  newImage = imresize(myImage, 0.5)
% Write a script that 1) loads an image. 2) creates a new version (new variable) that is the image resized by a ratio of 50/100. 3) show the image.
% Use your understanding of the different inputs into functions to resize it by different amounts
myimage=imread('cat1.jpg')
newImage = imresize(myimage, 50/100)
figure
imshow(newImage)
%% -----ex 3 -----
% Write a script that iteratively resizes the image from are ratio of 1/100 to 100/100 . 
% (technical note: you will need to add a line with a short 'pause' (c. 0.1 seconds) each time you show the image)
newimage=imread('cat1.jpg');
for kk=1:100
    kkk=kk/100;
    newimage2=imresize(newimage,kkk);
    imshow(newimage2)
    pause(0.1)
end
%% -----ex 4 -----
% Work out a way to use the functions rand and round to create a random number between 0 and 360.
r=round(rand*360)
%% -----ex 5 -----
% Create a version of the cat/dog script on your computer. Make sure it runs then:
% This is a flawed experiment in that cats are always first, dogs always second. Use the functions we looks at today randomize the presentation of the stimuli. 
fileList=Shuffle(["cat1.jpg","cat2.jpg","cat3.jpg", "cat4.jpg","cat5.jpg" ,"dog1.jpg","dog2.jpg","dog3.jpg","dog4.jpg","dog5.jpg"]);
for kk=1:10
    fileName=fileList(kk);
    im=imread(fileName);
    imshow(im);
    x=input('press 1 for cat and 2 for dog')
end

%% -----ex 6 -----
% The way I coded the user input writes over the last response every time a new response is made. 
% This is pretty useless. Can you use your knowledge of **indexing** to
% find a way to store this in an array (list) of numbers? [How do you put
% the numbers *into* an array using indexing?]
fileList2=Shuffle(["cat1.jpg","cat2.jpg","cat3.jpg", "cat4.jpg","cat5.jpg" ,"dog1.jpg","dog2.jpg","dog3.jpg","dog4.jpg","dog5.jpg"]);
response=zeros(1,10);
for kk=1:10
    fileName=fileList2(kk);
    im=imread(fileName);
    imshow(im);
    response(kk)=input('press 1 for cat and 2 for dog');
end
disp(response)
