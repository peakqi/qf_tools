function qf_copy_ClustertoMac
cd /Users/fengqi/Documents/MND_REGISTRATION
load postmortemAddr.mat
subfolder='x_bedpost_94deg*.dtifit/'
filename='nodif_brain_mask.nii.gz'
outputfile='mask.nii.gz'
for ii=12:14
    addr{ii}
      if strcmp(subfolder,'x_bedpost_94deg*.dtifit/')&(ii==5|ii==7|ii==12)
          system(strcat('scp -r jalapeno:',addr{ii}(1:end-8),'x_bedpost_2ave_norm.dtifit/',...
        filename,' /Users/fengqi/Documents/MND_REGISTRATION/',...
        addr{ii}([24:28,46:47]),'_',outputfile))

      else

    system(strcat('scp -r jalapeno:',addr{ii}(1:end-8),subfolder,...
        filename,' /Users/fengqi/Documents/MND_REGISTRATION/',...
        addr{ii}([24:28,46:47]),'_',outputfile))
         ls -ltr   
    end
end
%ojitiechoh