OPTION STRICT

'LOAD "MATH.PRG",1:EXEC 1
LOAD "PRG1:MATH.PRG":EXEC 1

'LOAD "RENDER.PRG",2:EXEC 2
LOAD "PRG2:RENDER.PRG":EXEC 2

DEF VERIFY_VEC3
 VAR A[3]'=[1,2,3]
 VAR B[3]'=[4,5,6]
 A[0]=1:A[1]=2:A[2]=3
 B[0]=4:B[1]=5:B[2]=6
 ?"A = ";
 '??A
 ?A[0],A[1],A[2]
 ?"B = ";
 '??B
 ?B[0],B[1],B[2]

 ?"DOT(A,B) = ";
 ?DOT(A,B)

 ?"CROSS(A,B) = ";
 VAR C3[3]
 CROSS C3,A,B
 '??C3
 ?C3[0],C3[1],C3[2]
END

DEF VERIFY_MAT2
 VAR A[2,2]'=[1,-1,-2,3]
 VAR B[2,2]'=[1,2,3,4]
 A[0,0]=1:A[0,1]=-1:A[1,0]=-2:A[1,1]=3
 B[0,0]=1:B[0,1]=2:B[1,0]=3:B[1,1]=4
 ?"A = ";
 '??A
 ?A[0,0],A[0,1],A[1,0],A[1,1]
 ?"B = ";
 '??B
 ?B[0,0],B[0,1],B[1,0],B[1,1]

 VAR C[2,2]
 ?"DETERMINANT2(A) = ";
 VAR DET=DETERMINANT2(A)
 ?DET

 ?"INVERSE2(A) = ";
 INVERSE2 C,A,DET
 '??C
 ?C[0,0],C[0,1],C[1,0],C[1,1]

 ?"A*B = ";
 MULTIPLY2 C,A,B
 '??C
 ?C[0,0],C[0,1],C[1,0],C[1,1]
 ?"B*A = ";
 MULTIPLY2 C,B,A
 '??C
 ?C[0,0],C[0,1],C[1,0],C[1,1]

 VAR D[2,2]'=[1,2,3,4]
 D[0,0]=1:D[0,1]=2:D[1,0]=3:D[1,1]=4
 ?"D = ";
 '??D
 ?D[0,0],D[0,1],D[1,0],D[1,1]
 VAR E[2]'=[1,3]
 E[0]=1:E[1]=3
 ?"E = ";
 '??E
 ?E[0],E[1]
 VAR F[2]
 TRANSFORM2 F,E,D
 ?"E*D = ";
 '??F
 ?F[0],F[1]

 VAR G[2,2]
 ?"ROTX(60) = ";
 ROTATE2 G,RAD(60)
 '??G
 ?G[0,0],G[0,1],G[1,0],G[1,1]
END

DEF VERIFY_MAT3
 VAR A[3,3]'=[3,-2,7, -5,1,4, 2,-3,-1]
 VAR B[3,3]'=[-4,2,5, 3,-2,1, 6,-3,-1]
 VAR C[3,3]'=[1,1,-1, -2,-1,1, -1,-2,1]
 A[0,0]=3:A[0,1]=-2:A[0,2]=7
 A[1,0]=-5:A[1,1]=1:A[1,2]=4
 A[2,0]=2:A[2,1]=-3:A[2,2]=-1
 B[0,0]=-4:B[0,1]=2:B[0,2]=5
 B[1,0]=3:B[1,1]=-2:B[1,2]=1
 B[2,0]=6:B[2,1]=-3:B[2,2]=-1
 C[0,0]=1:C[0,1]=1:C[0,2]=-1
 C[1,0]=-2:C[1,1]=-1:C[1,2]=1
 C[2,0]=-1:C[2,1]=-2:C[2,2]=1
 ?"A = ";
 '??A
 ?A[0,0],A[0,1],A[0,2],A[1,0],A[1,1],A[1,2],A[2,0],A[2,1],A[2,2]
 ?"B = ";
 '??B
 ?B[0,0],B[0,1],B[0,2],B[1,0],B[1,1],B[1,2],B[2,0],B[2,1],B[2,2]
 ?"C = ";
 '??C
 ?C[0,0],C[0,1],C[0,2],C[1,0],C[1,1],C[1,2],C[2,0],C[2,1],C[2,2]

 ?"DETERMINANT3(C) = ";
 VAR DET=DETERMINANT3(C)
 ?DET

 VAR D[3,3]
 ?"INVERSE3(C) = ";
 INVERSE3 D,C,DET
 '??D
 ?D[0,0],D[0,1],D[0,2],D[1,0],D[1,1],D[1,2],D[2,0],D[2,1],D[2,2]

 ?"A*B = ";
 MULTIPLY3 C,A,B
 '??C
 ?C[0,0],C[0,1],C[0,2],C[1,0],C[1,1],C[1,2],C[2,0],C[2,1],C[2,2]
 ?"B*A = ";
 MULTIPLY3 C,B,A
 '??C
 ?C[0,0],C[0,1],C[0,2],C[1,0],C[1,1],C[1,2],C[2,0],C[2,1],C[2,2]

 D[0,0]=2:D[0,1]=4:D[0,2]=6
 D[1,0]=3:D[1,1]=1:D[1,2]=5
 D[2,0]=8:D[2,1]=7:D[2,2]=9
 ?"D = ";
 '??D
 ?D[0,0],D[0,1],D[0,2],D[1,0],D[1,1],D[1,2],D[2,0],D[2,1],D[2,2]
 VAR E[3]'=[3,4,1]
 E[0]=3:E[1]=4:E[2]=1
 ?"E = ";
 '??E
 ?E[0],E[1],E[2]
 VAR F[3]
 TRANSFORM3 F,E,D
 ?"E*D = ";
 '??F
 ?F[0],F[1],F[2]

 VAR G[3,3]
 ?"ROTX(60) = ";
 ROTATEX3 G,RAD(60)
 '??G
 ?G[0,0],G[0,1],G[0,2],G[1,0],G[1,1],G[1,2],G[2,0],G[2,1],G[2,2]

 ?"ROTY(60) = ";
 ROTATEY3 G,RAD(60)
 '??G
 ?G[0,0],G[0,1],G[0,2],G[1,0],G[1,1],G[1,2],G[2,0],G[2,1],G[2,2]
 
 ?"ROTZ(60) = ";
 ROTATEZ3 G,RAD(30)
 '??G
 ?G[0,0],G[0,1],G[0,2],G[1,0],G[1,1],G[1,2],G[2,0],G[2,1],G[2,2]

 VAR AX[3]'=[1,1,0]
 AX[0]=1:AX[1]=1:AX[2]=0
 ?"ROTAXIS{1,1,0}(60) = ";
 NORMALIZE AX,AX
 ROTATEAXIS3 G,RAD(60),AX
 '??G
 ?G[0,0],G[0,1],G[0,2],G[1,0],G[1,1],G[1,2],G[2,0],G[2,1],G[2,2]
END

DEF VERIFY_MAT4
 VAR A[4,4]'=[1,0,1,2, -1,1,1,1, 1,-1,0,1, 1,1,-1,-2]
 A[0,0]=1:A[0,1]=0:A[0,2]=1:A[0,3]=2
 A[1,0]=-1:A[1,1]=1:A[1,2]=1:A[1,3]=1
 A[2,0]=1:A[2,1]=-1:A[2,2]=0:A[2,3]=1
 A[3,0]=1:A[3,1]=1:A[3,2]=-1:A[3,3]=-2
 ?"B = ";
 '??B
 ?A[0,0],A[0,1],A[0,2],A[0,3],A[1,0],A[1,1],A[1,2],A[1,3],A[2,0],A[2,1],A[2,2],A[2,3],A[3,0],A[3,1],A[3,2],A[3,3]

 ?"DETERMINANT4(A) = ";
 VAR DET=DETERMINANT4(A)
 ?DET

 VAR D[4,4]
 ?"INVERSE4(A) = ";
 INVERSE4 D,A,DET
 '??D
 ?D[0,0],D[0,1],D[0,2],D[0,3],D[1,0],D[1,1],D[1,2],D[1,3],D[2,0],D[2,1],D[2,2],D[2,3],D[3,0],D[3,1],D[3,2],D[3,3]

 VAR B[4,4]'=[5,2,6,1, 0,6,2,0, 3,8,1,4, 1,8,5,6]
 B[0,0]=5:B[0,1]=2:B[0,2]=6:B[0,3]=1
 B[1,0]=0:B[1,1]=6:B[1,2]=2:B[1,3]=0
 B[2,0]=3:B[2,1]=8:B[2,2]=1:B[2,3]=4
 B[3,0]=1:B[3,1]=8:B[3,2]=5:B[3,3]=6
 ?"B = ";
 '??B
 ?B[0,0],B[0,1],B[0,2],B[0,3],B[1,0],B[1,1],B[1,2],B[1,3],B[2,0],B[2,1],B[2,2],B[2,3],B[3,0],B[3,1],B[3,2],B[3,3]

 VAR C[4,4]'=[7,5,8,0, 1,8,2,6, 9,4,3,8, 5,3,7,9]
 C[0,0]=7:C[0,1]=5:C[0,2]=8:C[0,3]=0
 C[1,0]=1:C[1,1]=8:C[1,2]=2:C[1,3]=6
 C[2,0]=9:C[2,1]=4:C[2,2]=3:C[2,3]=8
 C[3,0]=5:C[3,1]=3:C[3,2]=7:C[3,3]=9
 ?"C = ";
 '??C
 ?C[0,0],C[0,1],C[0,2],C[0,3],C[1,0],C[1,1],C[1,2],C[1,3],C[2,0],C[2,1],C[2,2],C[2,3],C[3,0],C[3,1],C[3,2],C[3,3]

 ?"B*C = ";
 MULTIPLY4 D,B,C
 '??D
 ?D[0,0],D[0,1],D[0,2],D[0,3],D[1,0],D[1,1],D[1,2],D[1,3],D[2,0],D[2,1],D[2,2],D[2,3],D[3,0],D[3,1],D[3,2],D[3,3]
 ?"C*B = ";
 MULTIPLY4 D,C,B
 '??D
 ?D[0,0],D[0,1],D[0,2],D[0,3],D[1,0],D[1,1],D[1,2],D[1,3],D[2,0],D[2,1],D[2,2],D[2,3],D[3,0],D[3,1],D[3,2],D[3,3]

 D[0,0]=2:D[0,1]=3:D[0,2]=-4:D[0,3]=2
 D[1,0]=4:D[1,1]=1:D[1,2]=4:D[1,3]=5
 D[2,0]=2:D[2,1]=5:D[2,2]=3:D[2,3]=1
 D[3,0]=1:D[3,1]=6:D[3,2]=2:D[3,3]=3
 ?"D = ";
 '??D
 ?D[0,0],D[0,1],D[0,2],D[0,3],D[1,0],D[1,1],D[1,2],D[1,3],D[2,0],D[2,1],D[2,2],D[2,3],D[3,0],D[3,1],D[3,2],D[3,3]
 VAR E[4]'=[3,2,5,1]
 E[0]=3:E[1]=2:E[2]=5:E[3]=1
 ?"E = ";
 '??E
 ?E[0],E[1],E[2],E[3]
 VAR F[4]
 TRANSFORM4 F,E,D
 ?"E*D = ";
 '??F
 ?F[0],F[1],F[2],F[3]

 VAR G[4,4]
 ?"ROTX(60) = ";
 ROTATEX4 G,RAD(60)
 '??G
 ?G[0,0],G[0,1],G[0,2],G[0,3],G[1,0],G[1,1],G[1,2],G[1,3],G[2,0],G[2,1],G[2,2],G[2,3],G[3,0],G[3,1],G[3,2],G[3,3]

 ?"ROTY(60) = ";
 ROTATEY4 G,RAD(60)
 '??G
 ?G[0,0],G[0,1],G[0,2],G[0,3],G[1,0],G[1,1],G[1,2],G[1,3],G[2,0],G[2,1],G[2,2],G[2,3],G[3,0],G[3,1],G[3,2],G[3,3]
 
 ?"ROTZ(60) = ";
 ROTATEZ4 G,RAD(30)
 '??G
 ?G[0,0],G[0,1],G[0,2],G[0,3],G[1,0],G[1,1],G[1,2],G[1,3],G[2,0],G[2,1],G[2,2],G[2,3],G[3,0],G[3,1],G[3,2],G[3,3]

 VAR AX[3]'=[1,1,0]
 AX[0]=1:AX[1]=1:AX[2]=0
 ?"ROTAXIS{1,1,0}(60) = ";
 NORMALIZE AX,AX
 ROTATEAXIS4 G,RAD(60),AX
 '??G
 ?G[0,0],G[0,1],G[0,2],G[0,3],G[1,0],G[1,1],G[1,2],G[1,3],G[2,0],G[2,1],G[2,2],G[2,3],G[3,0],G[3,1],G[3,2],G[3,3]

 VAR PRJ[4,4]
 VAR FOV=0.16*PI()
 VAR ASP=16/9
 VAR NEAR=0.001
 VAR FAR=100
 PERSPECTIVE PRJ,FOV,ASP,NEAR,FAR
 ?"PERSPECTIVE(",FOV,ASP,NEAR,FAR,")="
 '??PRJ
 ?PRJ[0,0],PRJ[0,1],PRJ[0,2],PRJ[0,3],PRJ[1,0],PRJ[1,1],PRJ[1,2],PRJ[1,3],PRJ[2,0],PRJ[2,1],PRJ[2,2],PRJ[2,3],PRJ[3,0],PRJ[3,1],PRJ[3,2],PRJ[3,3]

 VAR POS[3]'=[0,0,5]
 POS[0]=0:POS[1]=0:POS[2]=5
 VAR TAG[3]'=[0,0,0]
 TAG[0]=0:TAG[1]=0:TAG[2]=0
 VAR UP[3]'=[0,1,0]
 UP[0]=0:UP[1]=1:UP[2]=0
 VAR VW[4,4]
 LOOKAT VW,POS,TAG,UP
 ?"LOOKAT
 ?" ",POS[0],POS[1],POS[2]
 ?" ",TAG[0],TAG[1],TAG[2]
 ?" ",UP[0],UP[1],UP[2]
 '??VW
 ?VW[0,0],VW[0,1],VW[0,2],VW[0,3],VW[1,0],VW[1,1],VW[1,2],VW[1,3],VW[2,0],VW[2,1],VW[2,2],VW[2,3],VW[3,0],VW[3,1],VW[3,2],VW[3,3]

 VAR VP[4,4]
 VAR LT[2]'=[0,0]
 LT[0]=0:LT[1]=0
 VAR WH[2]'=[800,600]
 WH[0]=800:WH[1]=600
 VIEWPORT VP,LT[0],LT[1],WH[0],WH[1],NEAR,FAR
 ?"VIEWPORT(",LT[0],LT[1],WH[0],WH[1],NEAR,FAR,")"
 '??VP
 ?VP[0,0],VP[0,1],VP[0,2],VP[0,3],VP[1,0],VP[1,1],VP[1,2],VP[1,3],VP[2,0],VP[2,1],VP[2,2],VP[2,3],VP[3,0],VP[3,1],VP[3,2],VP[3,3]
END

DEF VERIFY_QUAT
 VAR PITCH=RAD(30)
 VAR YAW=RAD(45)
 VAR ROLL=RAD(0)
 VAR A[4]
 FROMPITCHYAWROLL A,PITCH,YAW,ROLL
 ?"PTICHYAWROLL(",PITCH,YAW,ROLL,")=";
 '??A
 ?A[0],A[1],A[2],A[3]

 VAR B[4]
 CONJUGATE B,A
 ?"CONJUGATE=";
 '??B
 ?B[0],B[1],B[2],B[3]

 VAR C[4]
 INVERSEQ C,A
 ?"INVERSE=";
 '??C
 ?C[0],C[1],C[2],C[3]

 VAR D[4]
 MULTIPLYQ D,C,A
 '??D
 '?D[0],D[1],D[2],D[3]

 VAR E[4]
 VAR AX[3]'=[0,1,0]
 AX[0]=0:AX[1]=1:AX[2]=0
 ROTATEAXISQ E,RAD(45),AX
 ?"ROTATEAXIS(45,{0,1,0})=";
 '??E
 ?E[0],E[1],E[2],E[3]

 VAR U[3]'=[1,0,0]
 U[0]=1:U[1]=0:U[2]=0
 VAR V[3]
 TRANSFORMQ V,U,E
 ?"TRANSFORM({1,0,0},ROTATEAXIS(45,{0,1,0}))=";
 '??V
 ?V[0],V[1],V[2]

 VAR AA[4]
 TOAXISANGLE AA,E
 ?"AXIS=";
 ?AA[0],AA[1],AA[2]
 ?"ANG=";
 ?DEG(AA[3])

 VAR F[4]
 U[0]=1:U[1]=0:U[2]=0
 V[0]=0:V[1]=1:V[2]=0
 FROM2VEC F,U,V
 ?"FROM2VEC({1,0,0},{0,1,0})=";
 '??F
 ?F[0],F[1],F[2],F[3]
END

DEF MAIN
 ACLS

 'DEFAULT == 640X360
 'XSCREEN 1280,720

 VERIFY_VEC3
 
 '?""
 'VERIFY_MAT2
 
 '?""
 'VERIFY_MAT3
 
 ?""
 VERIFY_MAT4
 
 ?""
 VERIFY_QUAT

 GRP_DRAW_TRIANGLES GRP_POLY_PAGE(),GRP_POLY_WIDTH(),GRP_POLY_HEIGHT(),GRP_POLY_MARGIN(),RGB(127,127,127)
 GPAGE GRP_POLY_PAGE(),0
 'SAVE "GRP3:TRI.PNG"

 WHILE #FALSE
  'VAR MS=MILLISEC()
  VAR MS=MILLISEC
  GCLS
  ?"HELLO WORLD"
  '?MILLISEC()-MS
  ?MILLISEC-MS
  VSYNC
 WEND
END

MAIN

