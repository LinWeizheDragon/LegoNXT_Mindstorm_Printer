function g=printCUED(mA,mB,mC,Text)
%This function is used to print.
    function f1=right(x)
        scroll(-round(x/4),mA)
        disp('right');
        disp(x/4);
    end
    function f2=left(x)
        scroll(round(x/4),mA);
        disp('left');
        disp(x/4);
    end
    function f3=up(x)
        move(x,mB);
        disp('up');
        disp(x);
    end
    function f4=down(x)
        move(-x,mB);
        disp('down');
        disp(x);
    end
    function f5=Pen(index)
        if (index==true)
            drop(-25,mC);
            disp('Pen Down');
        else
            drop(25,mC);
            disp('Pen Up');
        end
    end
%C
%Pen(false);
%up(200);
% right(160);
% Pen(true);
% left(120);
% down(200);
% right(120);
% Pen(false);
% %U
% up(200);
% right(60);
% Pen(true);
% down(200);
% right(120);
% up(200);
% Pen(false);

n=length(Text);
for i=1:n
    right(60);
    letter = Text(i)
    if strcmp('1', letter)
        right(120-8);
        Pen(true);
        down(200);
        Pen(false);
        up(200);
    elseif strcmp('2', letter)
        Pen(true);
        right(120-8);
        down(100);
        left(120);
        down(100);
        right(120);
        Pen(false);
        up(200);
    elseif strcmp('3', letter)
        Pen(true);
        right(120-8);
        down(100);
        left(120);
        right(120);
        down(100);
        left(120);
        Pen(false);
        right(120);
        up(200);
    elseif strcmp('4', letter)
        Pen(true);
        down(100);
        right(120);
        up(100);
        down(200);
        Pen(false);
        up(200);
    elseif strcmp('5', letter)
        down(200);
        Pen(true);
        right(120-8);
        up(100);
        left(120);
        up(100);
        right(120-8);
        Pen(false);
    elseif strcmp('6', letter)
        Pen(true);
        down(200);
        right(120);
        up(100);
        left(120);
        Pen(false);
        right(120);
        up(100);
    elseif strcmp('7', letter)
        Pen(true);
        right(120-8);
        down(200);
        Pen(false);
        up(200);
    elseif strcmp('8', letter)
        Pen(true);
        down(200);
        Pen(false);
        up(200);
        right(120);
        Pen(true);
        left(120);
        Pen(false);
        right(120);
        down(100);
        Pen(true);
        left(120);
        Pen(false);
        right(120);
        down(100);
        Pen(true);
        left(120);0
        Pen(false);
        right(120);
        Pen(true);
        up(200);
        Pen(false);
    elseif strcmp('9', letter)
        down(100);
        
        right(120);
        Pen(true);
        left(120);
        up(100);
        right(120-8);
        down(200);
        left(120);
        Pen(false);
        up(200);
        right(120);
    elseif strcmp('0', letter)
        Pen(true);
        right(120-8);
        down(200);
        left(120);
        up(200);
        Pen(false);
        right(120);
    end
    
end

%2
%right(60);
%Pen(true);
%right(120-8);
%down(100);
%left(120);
%down(100);
%right(120);
%Pen(false);
%0
%right(60)
%up(200);
%Pen(true);
%right(120-8);
%down(200);
%left(120);
%up(200);
%Pen(false);
%1
%right(180);
%Pen(true);
%down(200);
%Pen(false);
%7
%up(200);
%ight(60);
%Pen(true);
%right(120-8);
%down(200);
%Pen(false);

left(3000);
% Pen(false);
% right(100)
% Pen(true);
% left(40)
% %inclineDrawing(-10,-10, mA, mB);
% down(80);
% %inclineDrawing(10,-10,mA,mB);
% right(40);
% Pen(false);
% %move
% right(50)
% up(100);
% %U
% Pen(true)
% down(90)
% inclineDrawing(10,-10,mA,mB);
% right(30)
% inclineDrawing(10, 10,mA,mB);
% up(90)
% Pen(false)
% %move
% right(50)
% %E
% right(50)
% Pen(true)
% left(50)
% down(100)
% right(50)
% Pen(false)
% up(50)
% Pen(true)
% left(50)
% Pen(false)
% %move
% right(100)
% up(50)
% %D
% Pen(true)
% down(100)
% right(25)
% inclineDrawing(25,25,mA,mB)
% up(50)
% inclineDrawing(-25,25,mA,mB)
% left(25)
% Pen(false)
% 
% %completed
% left(1000);





end