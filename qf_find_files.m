function qf_find_files(addr,startstring,changetostring)
cd addr
a=ls;
st = strsplit(a,{' ','\f','\n','\r','\t','\v'})
sz=size(st);
for ii=1:sz(2)
    if strcmp(st{ii}(1:9), startstring )
        copyfile(st{ii},strcat(changetostring,st{ii}(10:end)))
    else
    end
end