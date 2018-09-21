%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) kmtalexwang
% File name: HaxUniDist.m
% Author: kmtalexwang
% Version: 1.0
% Date: 2018.09.21
% Description: 直角坐标系下均匀分布函数
% History: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [user_local] = HaxUniDist(user_number,D)

i = 1;
while i <= user_number
    x = 2*D*rand(1,2)-1*D;
    if (abs(x(1)) + abs(x(2))/sqrt(3) ) <= D && abs(x(2)) <= D*sqrt(3)/2
        user_local(i,:) = x;
        i = i+1;
        % plot(x(1), x(2),'ro');
    end
end
