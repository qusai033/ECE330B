function data = Euler_Method_II(M, K, B, x0, v0, Integration_Time, h)
    M = 1; % kg
    K = 3; % N/m
    B = 0.5; % N
    x0 = 2; % m
    v0 = 0; % m/s
    Integration_Time = 15; % s
    h = 0.01; % s
    t = 0;
    %x = lowerbound;
    dist = x0;
    vel = v0;
    accel = (((-K/M)*x0)-((B/M)*v0));
    data = [t, x0, v0, accel];
    t = t + h;
    while(t <= Integration_Time)
        olddist = dist;
        oldvel = vel;
        Koo = oldvel;
        Kot = ((-K/M)*olddist)-((B/M)*oldvel);
        Kto = oldvel + h*(Kot);
        Ktt = (((-K/M)*(olddist+(h*Koo)))-((B/M)*(oldvel+(h*Kot))));
        
        dist = olddist + (h/2)*(Koo+Kto);
        vel = oldvel + (h/2)*(Kot+Ktt);
        accel = (((-K/M)*dist)-((B/M)*vel));
        b = [t, dist, vel, accel];
        data = [data; b];
        t = t + h;
    end
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
    title(['Deliverable 2: Improved Euler Method(h=', num2str(h),')'],'FontSize',16);
    legend('x(t)', 'v(t)', 'a(t)' , '4');
end