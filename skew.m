function skew_t = skew(T)
skew_t = [0 -T(3) T(2) ; T(3) 0 -T(1) ; -T(2) T(1) 0 ];
end