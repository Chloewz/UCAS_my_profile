clear;clc;
% 数值分析
% 第二次作业
% Ch3-上机题 Cholesky分解

% 生成Hilbert矩阵
n=8;
H=zeros(n,n);
for i=1:n
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end

% 计算b
x=ones(n,1);
b=H*x;

% Cholesky分解
C=chol(H);  % C为上三角矩阵
% C=zeros(n,n);
% % 求第一列
% C(1,1)=sqrt(H(1,1));
% for i=2:n
%     C(i,1)=H(i,1)/C(1,1);
% end
% % 求剩下L-1列
% for j=2:n
%     for i=2:n
%         C(j,j)=sqrt(H(j,j)-sum(C(j,1:j-1).^2));
%         if i>j
%             C(i,j)=(H(i,j)-sum(C(i,1:j-1).*C(j,1:j-1)))/C(j,j);
%         end
%     end
% end

% 由Cholesky分解的矩阵求解xhat
y=C'\b;
xhat=C\y;

% 计算残差与误差的无穷范数
rnorm=norm(b-H*xhat,"inf")
deltaxnorm=norm(xhat-x,"inf")
%% 第二问
% 增加扰动
bnew=b+10e-7;
ynew=C'\bnew;
xhatnew=C\ynew;

% 计算新的残差与误差的无穷范数
rnormnew=norm(bnew-H*xhatnew,"inf");
deltaxnormnew=norm(xhatnew-x,"inf");
