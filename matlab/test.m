% example 1: 5000 x 1 x 2 input
X = make_example(1);
[M, S] = spectral_granger(X, 500); % 1.8 secs compared to 145 secs originally
load('example1.mat', 'expected')
d  = expected.M.gc - M.gc;
assert(all(abs(d(:) < 1e-12)))


%% example 2: 5000 x 500 x 2 input
X = make_example(1000);
[M, S] = spectral_granger(X, 500); % 2.03 secs compared to 147 secs originally
load('example2.mat', 'expected')
d  = expected.M.gc - M.gc;
assert(all(abs(d(:) < 1e-12)))
