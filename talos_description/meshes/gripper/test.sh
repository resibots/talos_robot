for f in  *.{stl,STL};
 do echo $f;
 file=${f##*/};
 base=${file%.*};
 echo $base;
 base="${base}.dae"
 meshlabserver -i $f -s black_coloring.mlx -o $base -om vc
done
#meshlabserver -i femur.STL -s black_coloring.mlx -o femur.dae -om vc


# FILE="/home/vivek/lighttpd.tar.gz"
# basename "$FILE"
# f="$(basename -- $FILE)"
# echo "$f"
