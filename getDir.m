function [dirname,components] = getDir(inputpath,varargin)
try
    dirname = uigetdir(inputpath);
catch
    dirname = uigetdir('.\');
    warning(['Cannot find "',inputpath,'", redirected to "',dirname,'".']);
end
if length(dirname)==1
    dirname = '.\';
end
if nargin>1
%     disp([dirname,'\*.',varargin{1}])
    components = dir([dirname,'\*.',varargin{1}]);
else
    components = dir(dirname);
    components = components(3:end);
end
end
