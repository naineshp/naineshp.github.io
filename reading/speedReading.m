clc
clear all
close all


str = 'The Time Traveller (for so it will be convenient to speak of him) was expounding a recondite matter to us. His grey eyes shone and twinkled, and his usually pale face was flushed and animated. The fire burned brightly, and the soft radiance of the incandescent lights in the lilies of silver caught the bubbles that flashed and passed in our glasses. Our chairs, being his patents, embraced and caressed us rather than submitted to be sat upon, and there was that luxurious after-dinner atmosphere when thought roams gracefully free of the trammels of precision. And he put it to us in this way--marking the points with a lean forefinger--as we sat and lazily admired his earnestness over this new paradox (as we thought it:) and his fecundity.';

%str = fileread('The Time Machine - H.G.Wells.txt');

wordsPerMinute = 300;




for i = 1:length(str)
    if strcmp(str(i),'-') == 1
        str(i) = ' ';   
    else
        
    end
   
end


A = strsplit(str)';

for i = 1 : length(A)

 
    fig = figure(1);
        
    text(0.5,0.5,A(i),'Color','black','FontSize',36, 'HorizontalAlignment', 'center');
    
    pause((1/(wordsPerMinute/60))); % +(length(A{i})*0.005));

    clf
    
   if strcmp(A(i),'*')==1  
       w = waitforbuttonpress;
   end
   
end



