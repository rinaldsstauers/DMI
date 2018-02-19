mkdir matlab
cd matlab
%% Mērījumu datu apstrāde
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im,'o-')
%Mēģināsim atminēt sakarību kas sasaista x un y sakaribu mēs meklēsim kā 2. kārtas polinomu
%koeficientus 2. kārtas polinomam atradīsim ar POLYFIT funkciju c = polyfit(x,y,N)
C = (Um,Im,2)
 C = (Um,Im,2)
        ↑
Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
 
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

U = -1:0.01:3.2;
I = C(1)*U.2+C(2)*U+C(3);
 I = C(1)*U.2+C(2)*U+C(3);
           ↑
Error: Unexpected MATLAB expression.
 
I = C(1)*U.^2+C(2)*U+C(3);
plot(Um,Im,'o',U,I)
plot(Um,Im,'o',U,I)
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
%Nākamais atkārtosim ar ceturtāš kārtas polinomu
%izmantosim POLYVAL funkciju
%y=polyval(C,x);
C = polyfit(Um,Im,4)

C =

   -0.0557    0.4436   -0.6159    0.0221    2.2373

I = polyval(C,U);
plot(Um,Im,'o',U,I)
 %pie lielas polinoma pakāpes gan aproksimācijai, gan interpolācijai būs kļūdas
%Lineāra sakarība
C = polyfit(Um,Im,1)

C =

    0.7434    1.6936

I = polyval(C,U);
plot(Um,Im,'o',U,I)
% Vairākas mērījumu sērijas 
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 1.9 2.5 3.5 4.4;
         1.0 2.1 2.2 3.3 4.6];
% kā matlabs zīmēs matricas ?\
figure,plot(Um,Im,'o-')
figure,plot(Um,Im','o-')
% pielaikosim polinomu
% meklēsim vidējo vērtību
Ivid = mean(Im)

Ivid =

    0.9600    2.0000    2.3600    3.3400    4.5000

C = polyfit(Um,Im,3);
Error using polyfit (line 47)
X and Y vectors must be the same size.
 
C = polyfit(Um,Ivid,3);
U = -1:0.01:3.2;
I = polyval(C,U);
%uzzimet grafiku - lai merijumu punkti butu ar o, un lai videjais starp metijumiem butu ar *k un lai pielaikotais polinoms butu ar liniju
plot(Um,Im,'o',Um,Im','*k',U,I)
plot(Um,Im,'o',Um,Ivid,'*k',U,I)
plot(Um,Im','o',Um,Ivid,'*k',U,I)
% kad ir vairākas mērījumu sērijas rēķina vidējo kvadrātisko novirzi
Ivkn = std(Im);
errorbar(Um,Ivid,Ivkn)
%% kā ielasīt skenēto grafiku un iegūt mērījumu punktus
cd

/home/user/matlab

ls
image1.JPG  image2.JPG

%% ielasīsim bildes matlabā
A = imread('image1,JPG');
Error using imread>get_full_filename (line 481)
File "image1,JPG" does not exist.

Error in imread (line 344)
    filename = get_full_filename(fid, errmsg, filename);
 
A = imread('image1.JPG');
B = imread('image2.JPG');
figure(1),image(A),shg
figure(2),image(B),shg
figure(2),image([0 14],[0 80],B)
figure(2),image([0 14],[80 0],B)
set(gca,'Ydir','normal')
set(gca,'Ydir','normal')
set(gca,'Ydir','inverse')
Error using matlab.graphics.axis.Axes/set
While setting property 'YDir' of class 'Axes':
'inverse' is not a valid value. Use one of these values: 'normal' | 'reverse'.
 
set(gca,'Ydir','reverse')
[x,y] = ginput(5)

x =

    3.5579
    5.7880
    8.3413
   10.5067
   13.8680


y =

    8.9196
   27.3809
   35.7936
   40.2337
   44.9074