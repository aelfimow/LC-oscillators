function [ abs_min, abs_max ] = percent_to_abs(value, tolerance)

    % Check number of arguments
    if (nargin != 2)
        usage("Wrong number of arguments. Expected: value, tolerance");
        abs_min = 0.0;
        abs_max = 0.0;
        return;
    end

    % Compute absolute delta value
    delta = (value / 100.0) * tolerance;

    abs_min = value - delta;
    abs_max = value + delta;

end
