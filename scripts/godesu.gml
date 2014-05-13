for(i=0;i<global.vcount;i++){

    decx = points[i,2]*sin(points[i,1])*cos(points[i,0]+rotyrad); //cos(points[i,0]+rotyrad)
    decz = points[i,2]*sin(points[i,1])*sin(points[i,0]+rotyrad); //cos(points[i,0]+rotyrad)
    decy = points[i,2]*cos(points[i,1]);

    h=sqrt(power(decx,2)+power(decy,2))
    a=(arccos(decx/h)+rotzrad);
    decx=cos(a)*h;
    decy=sin(a)*h;
    
    desu[i,0]=pivot[0] + decx;
    desu[i,1]=pivot[1] + decy;
    desu[i,2]=pivot[2] + decz;

}
