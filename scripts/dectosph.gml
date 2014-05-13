show_debug_message("dectosph");
for(i=0;i<global.vcount;i++){

    h=sqrt(power(points[i,0],2)+power(points[i,1],2)+power(points[i,2],2));
    ry=arccos(points[i,1]/sqrt(power(points[i,0],2)+power(points[i,1],2)+power(points[i,2],2)));
    rxz=arctan2(points[i,2],points[i,0]);

    points[i,0]=rxz;
    points[i,1]=ry;
    points[i,2]=h;
}
