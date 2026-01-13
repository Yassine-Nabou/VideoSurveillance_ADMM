function[U,S,V]=svt_matrix(M,lamb)
  [U,S,V] = svd(M, 0);
   [~,m] = size(S);
%   for i=1:min(n,m)
%      S(i,i)= max(S(i,i)-lamb,0);
%   end
  S =(max(S - lamb* eye(m), 0));
end