function [value, tolerance] = abs_to_percent(abs_min, abs_max)

    % Check number of arguments
    if (nargin != 2)
        usage("abs_to_percent: Wrong number of arguments. Expected: value, tolerance");
        value = 0.0;
        tolerance = 0.0;
        return;
    end

    % Compute value as mean value of minimal and maximal absolute values
    value = (abs_max + abs_min) / 2.0;

    % Compute delta and convert it to percent
    delta = value - abs_min;
    tolerance = (delta * 100.0) / value;

end
