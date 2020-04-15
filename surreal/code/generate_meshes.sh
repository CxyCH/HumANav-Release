Y=1350

# Loop Over Body Shapes
for j in `seq 1 30`
do
	# Sample a Random Body Shape
	R=$(($RANDOM%Y))

	# Loop over Genders
	for GENDER in male female
	do
		# Loop over Pose_IDX
		for i in 2 5 7 8 13 14 24 26 27 46 48 49 59 60 62 64 65
		do
			$BLENDER_PATH/blender -b -t 1 -P export_mesh_poses_v2.py -- --idx $i --ishape 0 --stride 50 --gender $GENDER --body_shape_idx $R
		done
	done
done


#for GENDER in male female
#do
#	for i in `seq 526 2877`
#	do
#		$BLENDER_PATH/blender -b -t 1 -P export_mesh_poses.py -- --idx $i --ishape 0 --stride 50 --gender $GENDER --body_shape_idx 0
#	done
#done
