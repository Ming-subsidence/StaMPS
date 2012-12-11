%PS_PARMS_INITIAL Initialize parms to default values for PS processing
%
%   Andy Hooper, Jan 2008

parmfile='parms';

parms=struct('Created',date);

parms.small_baseline_flag='n'; % PS ifgs with single masters

if exist('./processor.txt','file')
    processor=textread('./processor.txt','%s');
    parms.insar_processor=processor{1};
else
    parms.insar_processor='doris';
end

save(parmfile,'-struct','parms')


ps_parms_default
