function[L,S,K]=ADMM(X,LMB,S0,rho,lmb)
[U,Sigm,V]=svt_matrix(X-S0-(1/rho)*LMB,1/rho);
 L=U*Sigm*V';% Compute the new L0 
 S=X-L-(1/rho)*LMB;%initialise the new sparse
 [n,m]=size(L);
 for i=1:n
     for j=1:m
       if     (S(i,j)> lmb/rho)                         S(i,j)=S(i,j)-lmb/rho;
       elseif (S(i,j)>= -lmb/rho && S(i,j)<= lmb/rho)   S(i,j)=0;
       else                                             S(i,j)=S(i,j)+ lmb/rho;%(S(i,j)< -lmb/rho)
       end
     end
 end
 K=LMB+rho*(L+S-X);
end