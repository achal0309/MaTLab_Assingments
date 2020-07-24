function valid = valid_date(year,month,date)
a = rem(year,400);
b = rem(year,4);
c = rem(year,100);
%check if either year, month, day is not a scalar
if ~isscalar(year) || ~isscalar(month) || ~isscalar(date)
valid = false
return
end
%checking integer
e = rem(year,1)+rem(month,1)+rem(date,1);
if year > 0 && month > 0 && month <=12 && date > 0 && date <= 31 && e==0
    if (month == 4 || month == 6 || month == 9 || month == 11) && date <=30
        valid = true;
    elseif (month == 1 || month == 3 ||month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && date <=31
        valid = true;
    elseif month == 2 && a == 0 && date <=29
        valid = true;
         elseif month == 2 && b == 0 && c ~= 0 && date <=29
        valid = true;
    elseif month == 2 && date <=28
        valid = true;
    else
        valid = false;
    end
else
    valid = false;
end
