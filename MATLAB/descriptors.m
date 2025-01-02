% JUST FOR STRING DESCRIPTOR.
clear;clc;
N     = 64;
DescriptorType  = '03';
txt = 'github.com/WangXuan95'; % string.
txt = upsample(txt, 2);
ln    = length(txt);
sal   = dec2hex(txt);
s     = ['''h' dec2hex(ln+2) '_' DescriptorType];
for i=1:ln
   s = [s '_' sal(i, :)];
end

disp([num2str(8*(ln+2)) s ',' num2str(N*8-8*(ln+2)) '''h0'])