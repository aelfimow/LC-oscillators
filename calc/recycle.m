function [ L, AL, mr ] = recycle(f, C, N, da, di, h)

    % Set default values
    L = 0.0;
    AL = 0.0;
    mr = 0.0;

    % Check number of arguments
    if (nargin != 6)
        usage("Wrong number of arguments. Expected: f, C, N, da, di and h");
    end

    % Compute L
    L = 1.0 / (4.0 * pi * pi * f * f * C);

    % Compute AL
    AL = L / (N * N);

    le = ((da + di) * pi) / 2.0;
    A = ((da - di) / 2.0) * h;

    mr = (L * le) / (N * N * A * 4.0 * pi * 1E-7);

end

