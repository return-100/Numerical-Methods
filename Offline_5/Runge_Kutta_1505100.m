function [] = Runge_Kutta_1505100()

    df = @(x) (-2 * (x * x * x) + 12 * (x * x) - 20 * x + 8.5);
    f = @(x) (-0.5 * (x * x * x * x) + 4*(x * x * x) -10*(x * x) + 8.5 * x + 1);
    
    yTrue = zeros(9);
    xTrue = 0 : .5 : 4;
    
    for i = 1 : length(xTrue)
        yTrue(i) = f(xTrue(i));
    end
    
    yEuler = Euler_1505100(df);
    yHuen = Huen_1505100(df);
    yMidpoint = Midpoint_1505100(df);
    yRalston = Ralston_1505100(df);
    
    grid on;
    hold on;
    
    plot(xTrue, yTrue, 'k');
    plot(xTrue, yEuler, 'r');
    plot(xTrue, yHuen, 'b');
    plot(xTrue, yMidpoint, 'g');
    plot(xTrue, yRalston, 'm');
    
end

