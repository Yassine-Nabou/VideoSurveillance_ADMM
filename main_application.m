clear all
format long
R=VideoReader ('visiontraffic.avi'); %creates object v to read video data from the file named filename
X_Data=Matrix_video(R,171,200);%Put the 30 frames in a matrix
[n,m]=size(X_Data);
X = double(X_Data);
%%
% n=fix(n/100);
% X=X_Data(1:n,:);
% size(X);
S=0.1*rand(n,m);
rho= 0.007  %0.007;
lambda= 0.0002 %0.0002;
H=lambda*eye(n,m);
L=rand(n,m);
epsilon=0.1;
i=0;
%[Lnew,Snew,Hnew]=ADMM(X,S0,H0,rho,lambda);% campute the first iteration for L,S and H
%norm(Snew-S0)
crit1=1; crit2=1;
risud=0;
while( crit2>epsilon &&   rank(L)~=1) %crit1>epsilon  && 
 [Lnew,Snew,Hnew]=ADMM(X,H,S,rho,lambda);
 rank_L=rank(Lnew)
 residual =norm(Lnew+Snew-X)
 crit2 =rho*norm(Snew-S)
 risud=[risud;residual];
 % update rho
%  if(crit1 >10*crit2) ,rho=2*rho;
%  elseif(crit2 >10*crit1), rho=rho/2; 
%  end
 i=i+1
 L=Lnew;
 S=Snew;
 H=Hnew;
end
%% show the i eme image
for j =1:m 
 Img_bg=Lnew(:,j);
 Img =Snew(:,j);
 Img_org=X_Data(:,j);
 figure(j)
 imshow([reshape(Img_org,360,640), uint8(reshape(Img_bg,360,640)), reshape(Img,360,640)]);
 hold on
end
%%
figure(2)
semilogy(risud,'-r');
%plot(,'-r');


