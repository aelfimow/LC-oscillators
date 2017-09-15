function [ L, L_tolerance ] = compute_L(f, C, C_tolerance)

    % Set default value
    L_min = 0.0;
    L_max = 0.0;

    % Check number of arguments
    if (nargin != 3)
        usage("Wrong number of arguments. Expected: f, C, C_tolerance");
    end

    % Compute angular frequency
    omega = 2.0 * pi * f;

    % Compute delta C of capacitance using tolerance in percent
    delta_C = (C * C_tolerance) / 100.0;

    % Compute limits of capacitance
    C_min = C - delta_C;
    C_max = C + delta_C;

    % Compute limits of inductance
    L_min = 1.0 / (omega * omega * C_max);
    L_max = 1.0 / (omega * omega * C_min);

    % Compute inductance as mean value of limits
    L = (L_min + L_max) / 2.0;

    % Compute tolerance
    delta_L = L - L_min;
    L_tolerance = (delta_L * 100.0) / L;

end
