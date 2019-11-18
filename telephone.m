function varargout = test(varargin)
% TEST MATLAB code for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 28-Sep-2017 00:10:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d1=sin(2*pi*697/8192*n)+sin(2*pi*1209/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n1=strcat(get(handles.edit1,'string'),'1'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n1); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d1];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d1,8192); % ���������� 

f=fft(d1,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����1��Ƶ��ͼ');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d2=sin(2*pi*697/8192*n)+sin(2*pi*1336/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n2=strcat(get(handles.edit1,'string'),'2'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n2); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d2];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d2,8192); % ���������� 

f=fft(d2,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����2��Ƶ��ͼ');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d3=sin(2*pi*697/8192*n)+sin(2*pi*1477/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n3=strcat(get(handles.edit1,'string'),'3'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n3); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d3];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d3,8192); % ���������� 

f=fft(d3,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����3��Ƶ��ͼ');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d4=sin(2*pi*770/8192*n)+sin(2*pi*1209/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n4=strcat(get(handles.edit1,'string'),'4'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n4); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d4];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d4,8192); % ���������� 

f=fft(d4,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����4��Ƶ��ͼ');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d5=sin(2*pi*770/8192*n)+sin(2*pi*1336/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n5=strcat(get(handles.edit1,'string'),'5'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n5); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d5];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d5,8192); % ���������� 

f=fft(d5,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����5��Ƶ��ͼ');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d6=sin(2*pi*770/8192*n)+sin(2*pi*1477/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n6=strcat(get(handles.edit1,'string'),'6'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n6); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d6];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d6,8192); % ���������� 

f=fft(d6,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����6��Ƶ��ͼ');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d7=sin(2*pi*852/8192*n)+sin(2*pi*1209/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n7=strcat(get(handles.edit1,'string'),'7'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n7); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d7];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d7,8192); % ���������� 

f=fft(d7,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����7��Ƶ��ͼ');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d8=sin(2*pi*852/8192*n)+sin(2*pi*1336/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n8=strcat(get(handles.edit1,'string'),'8'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n8); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d8];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d8,8192); % ���������� 

f=fft(d8,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����8��Ƶ��ͼ');

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d9=sin(2*pi*852/8192*n)+sin(2*pi*1477/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n9=strcat(get(handles.edit1,'string'),'9'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n9); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d9];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d9,8192); % ���������� 

f=fft(d9,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����9��Ƶ��ͼ');

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000];  
num=get(handles.edit1,'string');  
l=length(num);  
n11=strrep(num,num,num(1:l-1)); %ȥ��ĩβ����������ϵ���ʾ 
d11=sin(0.7217*n)+sin(0.9273*n);  
set(handles.edit1,'string',n11);  
global NUM  
L=length(NUM);  
NUM=NUM(1:L-1100); %ɾ��ĩβ�����ڲ������ź��еĴ洢 
audioplayer(d11,8192);   

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000]; % ÿ������ 1000 ���������ʾ  
d0=sin(2*pi*941/8192*n)+sin(2*pi*1336/8192*n); % ��Ӧ��Ƶ��Ƶ����  
n0=strcat(get(handles.edit1,'string'),'0'); % ��ȡ���ֺ���  
set(handles.edit1,'string',n0); % ��ʾ����  
space=zeros(1,100); %100 �� 0 ģ�⾲���ź�  
global NUM  
phone=[NUM,d0];  
NUM=[phone,space]; % �洢�����Ĳ������ź�  
audioplayer(d0,8192); % ���������� 

f=fft(d0,2048); %����Ҷ�任 
a=abs(f);
axes(handles.axes1);
plot(4*(1-1024:length(f)-1024),fftshift(a));
title('����0��Ƶ��ͼ');

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global NUM  
audioplayer(NUM,8192);  
L=length(NUM);  
n=L/1100;  
number='';  
for i=1:n  
j=(i-1)*1100+1;  
d=NUM(j:j+999); % ��ȡ��ÿ������  
f=fft(d,2048); % �� N=2048 �� FFT �任  
a=abs(f);  
p=a.*a/10000; % ���㹦����  
num(1)=find(p(1:250)==max(p(1:250))); % ����Ƶ  
num(2)=300+find(p(300:380)==max(p(300:380))); % ����Ƶ  
if (num(1) < 180) row=1; % ȷ������  
elseif (num(1) < 200) row=2;  
elseif (num(1) < 220) row=3;  
else row=4;  
end  
if (num(2) < 320) column=1; % ȷ������  
elseif (num(2) < 340) column=2;  
else column=3;  
end  
z=[row,column]; % ȷ������  
if z==[4,2] tel=0;  
elseif z==[1,1] tel=1;  
elseif z==[1,2] tel=2;  
elseif z==[1,3] tel=3;  
elseif z==[2,1] tel=4;  
elseif z==[2,2] tel=5;  
elseif z==[2,3] tel=6;  
elseif z==[3,1] tel=7;  
elseif z==[3,2] tel=8;  
elseif z==[3,3] tel=9;  
end
t(i)=tel;
c=strcat(number,int2str(tel));  
number=c;  
i=i+1;  
end  
set(handles.edit2,'string',number);  

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 n=[1:1000]; 
 dB=sin(2*pi*697/8192*n)+sin(2*pi*1633/8192*n);
 space=zeros(1,100); 
 playerB=audioplayer(dB,8192);
 playblocking(playerB);
 global NUM; 
 global n_show; 
 NUM=[]; % ��ղ������ź� 
 n_show=[]; % �����ʾ�ź� 
 set(handles.edit1,'string',''); % �����ʾ
 set(handles.edit2,'string','');
 set(handles.edit3,'string',''); % �����ʾ
 global nn;
 nn=0;
 global contact;
 contact=[];

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global n_show; 
 global nn;
 global contact;
 nn=nn+1;
 n_show=strcat(get(handles.edit1,'string')); %������Ļ����ʾ�ĺ��� 
 contact(nn).num=strcat(get(handles.edit1,'string'));
 contact(nn).name=strcat(get(handles.edit3,'string'));  
 
 set(handles.edit1,'string', 'ok');% ��ʾȷ�ϵı�ʶ
 pause(3);
 set(handles.edit1,'string', ' ');
 set(handles.edit3,'string', ' ');
 
 n=[1:1000]; 
 d12=sin(2*pi*770/8192*n)+sin(2*pi*1633/8192*n); %��Ӧ��Ƶ��Ƶ���� 
 guidata(hObject, handles); 
 player12=audioplayer(d12,8192); 
 playblocking(player12); %���������� 

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nn;
global contact;
found=0;
global n_show; 
n_show=strcat(get(handles.edit1,'string'));
for i=1:nn
    if (strcmp(contact(i).num,n_show)==1)
        found=1;
        x=i;
    end
end
if (found==1)
    set(handles.edit3,'string',contact(x).name); % ��ʾ����
else
    set(handles.edit3,'string','not found')
end

 n=[1:1000]; 
 d15=sin(2*pi*852/8192*n)+sin(2*pi*1633/8192*n);
 space=zeros(1,100); 
 playerB=audioplayer(d15,8192);
 playblocking(playerB);

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nn;
global contact;

for i=1:nn
    set(handles.edit1,'string',contact(i).num); %������ʾ���б������ϵ�˺���
    set(handles.edit3,'string',contact(i).name);%������ʾ���б������ϵ������
    pause(2); 
    set(handles.edit1,'string', ' ');
    set(handles.edit3,'string', ' ');
end

 n=[1:1000]; 
 d16=sin(2*pi*941/8192*n)+sin(2*pi*1633/8192*n);
 space=zeros(1,100); 
 playerB=audioplayer(d16,8192);
 playblocking(playerB);

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
