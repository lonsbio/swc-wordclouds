#!/usr/bin/awk -f

# Modified from code by Jwalanta Shrestha: http://jwalanta.blogspot.com.au/2010/11/generating-tagcloud-unix-way.html
# used under CC BY-NC-SA 3.0: https://creativecommons.org/licenses/by-nc-sa/3.0/

BEGIN { 
    WIDTH=800
    HEIGHT=480
    SCALE=6
    
    OFS=""
    
    print "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>"
    print "<svg width=\"",WIDTH,"\" height=\"",HEIGHT,"\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\">"
}

{ 
R = int(rand()*9)
G = int(rand()*9)
B = int(rand()*9)

print "<text style=\"fill:#",R,G,B,";opacity:0.75;font-size:",$1*SCALE,"px;\"  x=\"",(rand()*WIDTH)-50,"\" y=\"",(rand()*HEIGHT)-50,"\">",$2,"</text>" 
}

END{ print "</svg>" }
