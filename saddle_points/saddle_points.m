function indices=saddle(M)
indices=[];
[a b]=size(M);
q=1;
for i=1:a
    for j=1:b
        x=M(i,:);
        y=M(:,j);
        c=M(i,j)>=x;
        d=M(i,j)<=y;
        if ~ismember(0,c) && ~ismember(0,d)
            indices(q,1)=i;
            indices(q,2)=j;
            q=q+1;
        end
    end
end
end
