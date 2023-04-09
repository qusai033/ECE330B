function data = Euler_Method(M, K, B, x0, v0, It, h, print)
    data = [];
    t = 0;
    %x = lowerbound;
    dist = x0;
    vel = v0;
    accel = (((-K/M)*x0)-((B/M)*v0));
    data = [t, x0, v0, accel];
    t = t + h;
    while(t <= It)
        olddist = dist;
        oldvel = vel;
        dist = olddist + h*(oldvel);
        vel = oldvel + h*(((-K/M)*olddist)-((B/M)*oldvel));
        accel = (((-K/M)*dist)-((B/M)*vel));
        b = [t, dist, vel, accel];
        data = [data; b];
        t = t + h;
    end
    if print == 1
        o = transpose(data(:,1));
        x = transpose(data(:,2));
        y = transpose(data(:,3));
        z = transpose(data(:,4));
        figure
        hold on
        plot(o,x, 'rs-')
        plot(o,y,'b+-')
        plot(o,z,'go-')
        xlabel('Time(s)');
        ylabel('Output');
        title(['Deliverable 1: Euler Method(h=', num2str(h),')'],'FontSize',16);
        legend('x(t)', 'v(t)', 'a(t)' , '4');
    end
end