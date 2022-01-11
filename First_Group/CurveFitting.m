%% creating domain of evenly spaced values between 1 and 100
t = linspace( 0, 1, 100 );

x = [0 5 10 15 20 25];
y = [100 111 119 132 140 151];

par_x = [1.2 2.8 4.3 5.4 6.8 7.9];
par_y = [7.2 16.1 38.9 67 146.6 266.2];

% x = [0 5 10 15 20 25];
% y = [100 111 119 132 140 151];

%% function to be modelled
f_t =  t.^2 - 2 * t + exp( t );

%% storing coefficients and model data for linear, exp, and power fits
[lin_a, lin_b, f_t_linear] = linearFit( t, f_t );
[quad_a, quad_b,quadc, QuadModel] = QuadFit( par_x, par_y );
[exp_m, exp_n, f_t_exp] = expFit(t, f_t);
% [pwr_m, pwr_c, f_t_pwr] = powerFit(x, y);

f_qua = quadc * x.^2 + x.*quad_b + quad_a ;
%% plotting all models on a graph
% plot( t, f_t, t, f_t_linear);%, t, f_t_exp, t, f_t_pwr );
% plot(x,y,x,f_t_linear, x, f_t_exp,x,QuadModel, x, f_t_pwr );

plot( t, f_t, t, f_t_linear);
plot(x,y,x,f_qua);
plot( t, f_t,t, f_t_exp );

% plot( t, f_t, t, f_t_linear, t, f_t_exp, par_x, f_qua );

xlabel( 't' ); ylabel( 'f(t)' ); grid; 
title( { 'Graphs of f(t) and Regression Models', ...
    '(Linear, Exponential, and Power)'} );

%% calculating RMS errors for each model 
% rmse_linear = rms( abs ( f_t - f_t_linear ) );
% rmse_exp = rms( abs ( f_t - f_t_exp ) );
% rmse_pwr = rms( abs( f_t - f_t_pwr ) );

%% plotting RMS errors on a bar graph to determine min error and best model
% figure; bar( [ rmse_linear, rmse_exp, rmse_pwr ] );
% xlabel( 'Regression Model' ); ylabel( 'RMS Error (\it{\epsilon/arbitrary units})');
% title( 'Regression Models RMS Errors' ); grid;