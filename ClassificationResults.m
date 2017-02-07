%load('GroupData.m');
k = zeros(2, 1);

for i=1:1:350
    k(GroupPatterns(3,i) + 1) = k(GroupPatterns(3,i) + 1) + 1;
end

for i=0:1:1
    fprintf('Group %d: %d norms ', i, k(i+1));
    fprintf('\n');
end
fprintf('\n');

s = zeros(2, 1);
l = zeros(1, 1);

for i=1:1:225
    if (IW(i,3) >= 0 && IW(i,3) <= 0.05)
        s(1) = s(1) + 1;
    elseif (IW(i,3) >= 0.95 && IW(i,3) <= 1)
        s(2) = s(2) + 1;
    elseif (IW(i,3) > 0.05 && IW(i,3) < 0.95)
        l(1) = l(1) + 1;
    end
end

for i=0:1:1
    fprintf('Group %d: %d neurons ', i, s(i+1));
    if (i < 1)
        fprintf('and on the edge there are: %d neurons\n', l(i+1))
    fprintf('\n');
    end
end
fprintf('\n');
