%% Question 1
A1=[54,14,-11,2;14,50,-4,29;-11,-4,55,22;2,29,22,95];
B1=[1;1;1;1];
[L,U] = lu(A1);
y=L\B1
x=U\y
xgj = gjacobi(A1,B1,x);
xgs = gseidel(A1,B1,x);
round(xgj,4);
round(xgs,4);
max(abs(round(xgj,4)-round(xgs,4)))


%% Question 2a
A2 = rand(100,100);
B2 = rand(100,1);
tic
X2a = A2\B2;
toc
tic
for i=1:10
   X2a = A2\B2;
end
toc
tic
for i=1:50
   X2a = A2\B2;
end
toc
%% Question 2b
[L2,U2] = lu(A2);
tic
X2b = U2\(L2\B2);
toc
tic
for i=1;10
    X2b = U2\(L2\B2);
end
toc
tic
for i=1;50
    X2b = U2\(L2\B2);
end
toc
%% Question 2c
A2inv = inv(A2);
tic
X2c=A2inv*B2;
toc
tic
for i=1:10
    X2c=A2inv*B2;
end
tic
for i=1:50
    X2c=A2inv*B2;
end
toc