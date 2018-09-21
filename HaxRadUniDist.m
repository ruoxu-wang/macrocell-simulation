%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) 2018 kmtalexwang.
% File name: HaxRadUniDist.m
% Author: kmtalexwang
% Version: 1.0
% Date: 2018.09.21
% Description: 极坐标系下均匀分布函数
% History: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [user_local] = HaxRadUniDist(user_number,D)

i = 1;
while i <= user_number
    theta=2*pi*rand(1);
    r=D*rand(1);
    [xx,yy]=pol2cart(theta,r); %将极坐标转换为笛卡尔坐标
    x(1)=xx;x(2)=yy;
    if (abs(x(1)) + abs(x(2))/sqrt(3) ) <= D && abs(x(2)) <= D*sqrt(3)/2
        user_local(i,:) = x;
        i = i+1;
        % plot(x(1), x(2),'ro');
    end
end
