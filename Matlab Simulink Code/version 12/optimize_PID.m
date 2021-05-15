function cost = optimize_PID(k)
    assignin('base','k',k);
    sim('tuning_PID.slx',10);
    cost = ITAE(length(ITAE));
end
