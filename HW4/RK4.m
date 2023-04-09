function data = RK4(M, K, B, x0, v0, It, h)
    M = 1; % kg
    K = 3; % N/m
    B = 0.5; % N
    x0 = 2; % m
    v0 = 0; % m/s
    It = 15; % s
    h = 0.01; % s
    %data = [];
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
        Koo = oldvel;
        Kot = ((-K/M)*olddist)-((B/M)*oldvel);
        Kto = oldvel + (h/2)*(Kot);
        Ktt = (((-K/M)*(olddist+((h/2)*Koo)))-((B/M)*(oldvel+((h/2)*Kot))));
        Ktho = oldvel + (h/2)*(Ktt);
        Ktht = (((-K/M)*(olddist+((h/2)*Kto)))-((B/M)*(oldvel+((h/2)*Ktt))));
        Kfo = oldvel + h*(Ktht);
        Kft = (((-K/M)*(olddist+(h*Ktho)))-((B/M)*(oldvel+(h*Ktht))));
        
        dist = olddist + (h)*((Koo/6)+(Kto/3)+(Ktho/3)+(Kfo/6));
        vel = oldvel + (h)*((Kot/6)+(Ktt/3)+(Ktht/3)+(Kft/6));
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
    title(['Deliverable 3: RK4 Method(h=', num2str(h),')'],'FontSize',16);
    legend('x(t)', 'v(t)', 'a(t)' , '4');
end