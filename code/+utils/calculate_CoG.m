function CoG = calculate_CoG(sub)
    base_val                    = sub.amp;

    %base_val(base_val>0)        = tiedrank(base_val(base_val>0));
    %base_val(base_val>0)        = log(base_val(base_val>0));

    weights                 = (base_val./sum(base_val));
    CoG                     = weights'*sub.xyz;
    CoG                     = single(CoG);
end