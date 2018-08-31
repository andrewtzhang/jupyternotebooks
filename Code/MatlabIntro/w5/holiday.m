function yep = holiday(month,day)
yep = false;
days = [1 1;7 4; 12 25; 12 31];
date = [month day];
if isequal(days(1,:),date)
	yep = true;
end
if isequal(days(2,:),date)
	yep = true;
end
if isequal(days(3,:),date)
	yep = true;
end
if isequal(days(4,:),date)
	yep = true;
end
end