%% 清空环境
clc
clear

%% 参数初始化
% 粒子群算法中的两个参数
c1 = 1.49445;
c2 = 1.49445;

maxgen=300;   % 进化次数  
sizepop=20;   % 种群规模

% 个体和速度最大最小值
popmax=2;
popmin=-2;
Vmax=0.5;
Vmin=-0.5;

%% 产生初始粒子和速度
for i=1:sizepop
    
    %随机产生一个种群
    pop(i,:)=2*rands(1,2);    %初始种群
    V(i,:)=0.5*rands(1,2);  %初始化速度
    
    %计算适应度
    fitness(i)=fun(pop(i,:));   %染色体的适应度
end

%% 个体极值和群体极值
[bestfitness bestindex]=max(fitness);
zbest=pop(bestindex,:);   % 群体极值位置
gbest=pop;    % 个体极值位置
fitnessgbest=fitness;   % 个体极值适应度值
fitnesszbest=bestfitness;   % 群体极值适应度值

%% 迭代寻优
for i=1:maxgen
    
    for j=1:sizepop
        
        % 速度更新
        V(j,:) = V(j,:) + c1*rand*(gbest(j,:) - pop(j,:)) + c2*rand*(zbest - pop(j,:));
        V(j,find(V(j,:)>Vmax))=Vmax;
        V(j,find(V(j,:)<Vmin))=Vmin;
        
        % 粒子更新
        pop(j,:)=pop(j,:)+V(j,:);
        pop(j,find(pop(j,:)>popmax))=popmax;
        pop(j,find(pop(j,:)<popmin))=popmin;
        
        % 新粒子适应度值
        fitness(j)=fun(pop(j,:)); 
   
    end
    
    % 个体极值和群体极值更新
    for j=1:sizepop
        
        % 个体极值更新
        if fitness(j) > fitnessgbest(j)
            gbest(j,:) = pop(j,:);
            fitnessgbest(j) = fitness(j);
        end
        
        % 群体极值更新
        if fitness(j) > fitnesszbest
            zbest = pop(j,:);
            fitnesszbest = fitness(j);
        end
    end 
    
    % 记录每代最优值
    yy(i)=fitnesszbest;    
        
end
%% 结果分析
plot(yy) % 画出每代最优个体适应度值
title('最优个体适应度','fontsize',12);
xlabel('进化代数','fontsize',12);ylabel('适应度','fontsize',12);

