for(i=0;i<8;i++){
    H=point_distance(points[i,0],points[i,2],pivot[0],pivot[2]); //(points[i,2]-pivot[2])/sin(oldrotyrad);
    rotyrad=degtorad(point_direction(pivot[0],pivot[2],points[i,0],points[i,2])+roty);
    points[i,0]=pivot[0]+cos(rotyrad)*H;
    points[i,2]=pivot[2]+sin(rotyrad)*H;
    
    show_debug_message("Point #"+string(i)+" H="+string(H)+" Direction="+string(point_direction(pivot[0],pivot[2],points[i,0],points[i,2]))+" Rotation="+string(roty));
}
show_debug_message(" ");
