// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:34201,y:32217,varname:node_4013,prsc:2|normal-6058-RGB,emission-6724-RGB,custl-3454-OUT,disp-7246-OUT,tess-1956-OUT;n:type:ShaderForge.SFN_Slider,id:1956,x:33602,y:32780,ptovrint:False,ptlb:Tessellation,ptin:_Tessellation,varname:node_1956,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:15.53173,max:60;n:type:ShaderForge.SFN_Multiply,id:8829,x:30596,y:34468,varname:node_8829,prsc:2|A-8472-OUT,B-4055-T;n:type:ShaderForge.SFN_Time,id:4055,x:30307,y:34642,varname:node_4055,prsc:2;n:type:ShaderForge.SFN_Vector2,id:8472,x:30307,y:34531,varname:node_8472,prsc:2,v1:0.05,v2:0.05;n:type:ShaderForge.SFN_Add,id:7343,x:30888,y:34481,varname:node_7343,prsc:2|A-8829-OUT,B-370-OUT;n:type:ShaderForge.SFN_Multiply,id:370,x:30789,y:34631,varname:node_370,prsc:2|A-1985-UVOUT,B-8424-OUT;n:type:ShaderForge.SFN_TexCoord,id:1985,x:30584,y:34664,varname:node_1985,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4172,x:31272,y:34498,varname:node_4172,prsc:2|A-7343-OUT,B-860-OUT;n:type:ShaderForge.SFN_Vector1,id:860,x:31052,y:34648,varname:node_860,prsc:2,v1:10;n:type:ShaderForge.SFN_Floor,id:3612,x:31490,y:34289,varname:node_3612,prsc:2|IN-4172-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4718,x:31678,y:34289,varname:node_4718,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3612-OUT;n:type:ShaderForge.SFN_Multiply,id:9133,x:31946,y:34202,varname:node_9133,prsc:2|A-4718-G,B-4944-OUT;n:type:ShaderForge.SFN_Vector1,id:4944,x:31876,y:34369,varname:node_4944,prsc:2,v1:57;n:type:ShaderForge.SFN_Vector2,id:2477,x:30405,y:35509,varname:node_2477,prsc:2,v1:0.05,v2:0.05;n:type:ShaderForge.SFN_Time,id:1405,x:30405,y:35626,varname:node_1405,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1377,x:30744,y:35468,varname:node_1377,prsc:2|A-2477-OUT,B-1405-T;n:type:ShaderForge.SFN_Add,id:6394,x:31014,y:35432,varname:node_6394,prsc:2|A-1377-OUT,B-2885-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2885,x:30744,y:35605,varname:node_2885,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6816,x:31218,y:35560,varname:node_6816,prsc:2|A-6394-OUT,B-8028-OUT;n:type:ShaderForge.SFN_Vector1,id:8028,x:31014,y:35594,varname:node_8028,prsc:2,v1:4;n:type:ShaderForge.SFN_Floor,id:9821,x:31458,y:35413,varname:node_9821,prsc:2|IN-6816-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7282,x:31721,y:35379,varname:node_7282,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9821-OUT;n:type:ShaderForge.SFN_Multiply,id:3726,x:31932,y:35469,varname:node_3726,prsc:2|A-7282-G,B-6698-OUT;n:type:ShaderForge.SFN_Vector1,id:6698,x:31650,y:35556,varname:node_6698,prsc:2,v1:57;n:type:ShaderForge.SFN_Add,id:4452,x:32120,y:35387,varname:node_4452,prsc:2|A-7282-R,B-3726-OUT;n:type:ShaderForge.SFN_Frac,id:7336,x:31422,y:35789,varname:node_7336,prsc:2|IN-6816-OUT;n:type:ShaderForge.SFN_Multiply,id:2198,x:31644,y:35789,varname:node_2198,prsc:2|A-7336-OUT,B-2859-OUT;n:type:ShaderForge.SFN_Vector1,id:2859,x:31456,y:35936,varname:node_2859,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:3458,x:31883,y:35755,varname:node_3458,prsc:2|A-4622-OUT,B-2198-OUT;n:type:ShaderForge.SFN_Vector1,id:4622,x:31661,y:35723,varname:node_4622,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:3670,x:32402,y:35191,varname:node_3670,prsc:2|A-4452-OUT,B-6765-OUT;n:type:ShaderForge.SFN_Add,id:3496,x:32414,y:35344,varname:node_3496,prsc:2|A-4452-OUT,B-3148-OUT;n:type:ShaderForge.SFN_Add,id:9591,x:32414,y:35490,varname:node_9591,prsc:2|A-4452-OUT,B-7094-OUT;n:type:ShaderForge.SFN_Vector1,id:6765,x:32156,y:35166,varname:node_6765,prsc:2,v1:58;n:type:ShaderForge.SFN_Vector1,id:3148,x:32156,y:35225,varname:node_3148,prsc:2,v1:57;n:type:ShaderForge.SFN_Vector1,id:7094,x:32156,y:35285,varname:node_7094,prsc:2,v1:1;n:type:ShaderForge.SFN_Sin,id:5384,x:32673,y:35144,varname:node_5384,prsc:2|IN-3670-OUT;n:type:ShaderForge.SFN_Sin,id:7933,x:32682,y:35262,varname:node_7933,prsc:2|IN-3496-OUT;n:type:ShaderForge.SFN_Sin,id:1712,x:32665,y:35391,varname:node_1712,prsc:2|IN-9591-OUT;n:type:ShaderForge.SFN_Sin,id:901,x:32664,y:35506,varname:node_901,prsc:2|IN-4452-OUT;n:type:ShaderForge.SFN_Multiply,id:1938,x:32904,y:35105,varname:node_1938,prsc:2|A-5947-OUT,B-5384-OUT;n:type:ShaderForge.SFN_Multiply,id:896,x:32902,y:35236,varname:node_896,prsc:2|A-5947-OUT,B-7933-OUT;n:type:ShaderForge.SFN_Multiply,id:3921,x:32902,y:35359,varname:node_3921,prsc:2|A-5947-OUT,B-1712-OUT;n:type:ShaderForge.SFN_Multiply,id:9194,x:32897,y:35502,varname:node_9194,prsc:2|A-5947-OUT,B-901-OUT;n:type:ShaderForge.SFN_Vector1,id:5947,x:32652,y:35070,varname:node_5947,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Frac,id:7930,x:33147,y:35181,varname:node_7930,prsc:2|IN-1938-OUT;n:type:ShaderForge.SFN_Frac,id:9694,x:33152,y:35291,varname:node_9694,prsc:2|IN-896-OUT;n:type:ShaderForge.SFN_Frac,id:2872,x:33155,y:35451,varname:node_2872,prsc:2|IN-3921-OUT;n:type:ShaderForge.SFN_Frac,id:2442,x:33155,y:35576,varname:node_2442,prsc:2|IN-9194-OUT;n:type:ShaderForge.SFN_Lerp,id:1665,x:33427,y:35237,varname:node_1665,prsc:2|A-9694-OUT,B-7930-OUT,T-3070-R;n:type:ShaderForge.SFN_Lerp,id:5767,x:33428,y:35357,varname:node_5767,prsc:2|A-2442-OUT,B-2872-OUT,T-3070-R;n:type:ShaderForge.SFN_Lerp,id:4930,x:33610,y:35287,varname:node_4930,prsc:2|A-5767-OUT,B-1665-OUT,T-3070-G;n:type:ShaderForge.SFN_Multiply,id:8424,x:33835,y:35302,varname:node_8424,prsc:2|A-4930-OUT,B-7212-OUT;n:type:ShaderForge.SFN_Vector1,id:7212,x:33575,y:35495,varname:node_7212,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:1993,x:32238,y:35646,varname:node_1993,prsc:2|A-7336-OUT,B-7336-OUT,C-3458-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3070,x:32491,y:35697,varname:node_3070,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1993-OUT;n:type:ShaderForge.SFN_Add,id:3390,x:32164,y:34245,varname:node_3390,prsc:2|A-4718-R,B-9133-OUT;n:type:ShaderForge.SFN_Frac,id:2504,x:31595,y:34578,varname:node_2504,prsc:2|IN-4172-OUT;n:type:ShaderForge.SFN_Multiply,id:3806,x:31815,y:34670,varname:node_3806,prsc:2|A-2504-OUT,B-5938-OUT;n:type:ShaderForge.SFN_Vector1,id:5938,x:31595,y:34726,varname:node_5938,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:4552,x:32043,y:34656,varname:node_4552,prsc:2|A-7751-OUT,B-3806-OUT;n:type:ShaderForge.SFN_Vector1,id:7751,x:31815,y:34578,varname:node_7751,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:5596,x:32457,y:33997,varname:node_5596,prsc:2|A-3390-OUT,B-8865-OUT;n:type:ShaderForge.SFN_Add,id:4808,x:32464,y:34111,varname:node_4808,prsc:2|A-3390-OUT,B-640-OUT;n:type:ShaderForge.SFN_Add,id:7010,x:32464,y:34248,varname:node_7010,prsc:2|A-3390-OUT,B-6640-OUT;n:type:ShaderForge.SFN_Vector1,id:8865,x:32178,y:33924,varname:node_8865,prsc:2,v1:58;n:type:ShaderForge.SFN_Vector1,id:640,x:32176,y:34025,varname:node_640,prsc:2,v1:57;n:type:ShaderForge.SFN_Vector1,id:6640,x:32174,y:34138,varname:node_6640,prsc:2,v1:1;n:type:ShaderForge.SFN_Sin,id:5078,x:32770,y:33946,varname:node_5078,prsc:2|IN-5596-OUT;n:type:ShaderForge.SFN_Sin,id:5479,x:32786,y:34121,varname:node_5479,prsc:2|IN-4808-OUT;n:type:ShaderForge.SFN_Sin,id:7890,x:32761,y:34262,varname:node_7890,prsc:2|IN-7010-OUT;n:type:ShaderForge.SFN_Sin,id:634,x:32741,y:34392,varname:node_634,prsc:2|IN-3390-OUT;n:type:ShaderForge.SFN_Multiply,id:9318,x:33061,y:33909,varname:node_9318,prsc:2|A-6441-OUT,B-5078-OUT;n:type:ShaderForge.SFN_Multiply,id:1112,x:33064,y:34053,varname:node_1112,prsc:2|A-6441-OUT,B-5479-OUT;n:type:ShaderForge.SFN_Multiply,id:9280,x:33064,y:34172,varname:node_9280,prsc:2|A-6441-OUT,B-7890-OUT;n:type:ShaderForge.SFN_Multiply,id:4810,x:33051,y:34312,varname:node_4810,prsc:2|A-6441-OUT,B-634-OUT;n:type:ShaderForge.SFN_Frac,id:1040,x:33379,y:33902,varname:node_1040,prsc:2|IN-9318-OUT;n:type:ShaderForge.SFN_Frac,id:3485,x:33377,y:34052,varname:node_3485,prsc:2|IN-1112-OUT;n:type:ShaderForge.SFN_Frac,id:4489,x:33377,y:34192,varname:node_4489,prsc:2|IN-9280-OUT;n:type:ShaderForge.SFN_Frac,id:8056,x:33358,y:34350,varname:node_8056,prsc:2|IN-4810-OUT;n:type:ShaderForge.SFN_Lerp,id:3370,x:33640,y:33945,varname:node_3370,prsc:2|A-3485-OUT,B-1040-OUT,T-5258-R;n:type:ShaderForge.SFN_Lerp,id:7256,x:33633,y:34217,varname:node_7256,prsc:2|A-8056-OUT,B-4489-OUT,T-5258-R;n:type:ShaderForge.SFN_Lerp,id:7787,x:33856,y:34079,varname:node_7787,prsc:2|A-7256-OUT,B-3370-OUT,T-5258-G;n:type:ShaderForge.SFN_Multiply,id:2374,x:34121,y:34068,varname:node_2374,prsc:2|A-7787-OUT,B-6727-OUT;n:type:ShaderForge.SFN_Multiply,id:2496,x:33190,y:34613,varname:node_2496,prsc:2|A-2504-OUT,B-2504-OUT,C-4552-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5258,x:33438,y:34593,varname:node_5258,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2496-OUT;n:type:ShaderForge.SFN_Slider,id:6441,x:32613,y:33824,ptovrint:False,ptlb:FanNoise,ptin:_FanNoise,varname:node_2552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:473.5,max:500;n:type:ShaderForge.SFN_Slider,id:6727,x:33897,y:34271,ptovrint:False,ptlb:Waves ,ptin:_Waves,varname:node_6727,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_LightColor,id:6558,x:31966,y:32660,varname:node_6558,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:7831,x:31966,y:32806,varname:node_7831,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5680,x:32195,y:32627,varname:node_5680,prsc:2|B-6558-RGB,C-7831-OUT;n:type:ShaderForge.SFN_Multiply,id:6752,x:31728,y:32583,varname:node_6752,prsc:2|A-6208-OUT,B-7708-RGB;n:type:ShaderForge.SFN_Power,id:6208,x:31488,y:32582,varname:node_6208,prsc:2|VAL-813-OUT,EXP-4448-OUT;n:type:ShaderForge.SFN_Color,id:7708,x:31488,y:32740,ptovrint:False,ptlb:Specular Color,ptin:_SpecularColor,varname:node_7708,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Dot,id:813,x:31263,y:32582,varname:node_813,prsc:2,dt:1|A-4330-OUT,B-6497-OUT;n:type:ShaderForge.SFN_Exp,id:4448,x:31263,y:32740,varname:node_4448,prsc:2,et:0|IN-3126-OUT;n:type:ShaderForge.SFN_Slider,id:3126,x:30892,y:32750,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_3126,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:6.463732,max:11;n:type:ShaderForge.SFN_NormalVector,id:8911,x:30769,y:32266,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:4330,x:30757,y:32412,varname:node_4330,prsc:2;n:type:ShaderForge.SFN_Dot,id:1066,x:31263,y:32423,varname:node_1066,prsc:2,dt:1|A-8911-OUT,B-4330-OUT;n:type:ShaderForge.SFN_Time,id:9716,x:31316,y:31126,varname:node_9716,prsc:2;n:type:ShaderForge.SFN_Slider,id:7015,x:30745,y:31321,ptovrint:False,ptlb:Speed_Wave_Rotation,ptin:_Speed_Wave_Rotation,varname:node_7015,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2514758,max:1;n:type:ShaderForge.SFN_Multiply,id:5375,x:31780,y:31300,varname:node_5375,prsc:2|A-9716-T,B-822-OUT,C-8949-OUT;n:type:ShaderForge.SFN_TexCoord,id:8276,x:31780,y:31431,varname:node_8276,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:2169,x:32093,y:31313,varname:node_2169,prsc:2|A-5375-OUT,B-8276-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6724,x:32706,y:31305,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_6724,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2169-OUT;n:type:ShaderForge.SFN_Vector2,id:8949,x:31316,y:31447,varname:node_8949,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Multiply,id:6667,x:33401,y:32519,varname:node_6667,prsc:2|A-5357-R,B-1737-OUT;n:type:ShaderForge.SFN_Multiply,id:7246,x:33759,y:32595,varname:node_7246,prsc:2|A-6667-OUT,B-1728-OUT;n:type:ShaderForge.SFN_NormalVector,id:1728,x:33401,y:32665,prsc:2,pt:True;n:type:ShaderForge.SFN_Slider,id:1737,x:32953,y:32561,ptovrint:False,ptlb:Wave_Intensity,ptin:_Wave_Intensity,varname:node_1737,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01775527,max:1;n:type:ShaderForge.SFN_Tex2d,id:6058,x:32706,y:31501,ptovrint:False,ptlb:node_6058,ptin:_node_6058,varname:node_6058,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf3c1c67c762d124b8f8a24b0f05f715,ntxv:3,isnm:True|UVIN-2169-OUT;n:type:ShaderForge.SFN_Add,id:4819,x:32114,y:31577,varname:node_4819,prsc:2|A-8276-UVOUT,B-3734-OUT;n:type:ShaderForge.SFN_Multiply,id:3734,x:31780,y:31578,varname:node_3734,prsc:2|A-9716-T,B-7009-OUT,C-1455-OUT;n:type:ShaderForge.SFN_Vector2,id:1455,x:31316,y:31755,varname:node_1455,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Tex2d,id:5357,x:32706,y:31681,ptovrint:False,ptlb:node_5357,ptin:_node_5357,varname:node_5357,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-4819-OUT;n:type:ShaderForge.SFN_Slider,id:5469,x:30750,y:31630,ptovrint:False,ptlb:Speed_Wave_Deformation,ptin:_Speed_Wave_Deformation,varname:node_5469,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2227606,max:1;n:type:ShaderForge.SFN_Multiply,id:9855,x:31111,y:31380,varname:node_9855,prsc:2|A-7015-OUT,B-7380-OUT;n:type:ShaderForge.SFN_Vector1,id:7380,x:30874,y:31507,varname:node_7380,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:822,x:31316,y:31318,ptovrint:False,ptlb:Invert_Speed_Wave_Rotation,ptin:_Invert_Speed_Wave_Rotation,varname:node_822,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7015-OUT,B-9855-OUT;n:type:ShaderForge.SFN_Multiply,id:9405,x:31115,y:31709,varname:node_9405,prsc:2|A-5469-OUT,B-7380-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7009,x:31316,y:31618,ptovrint:False,ptlb:Invert_Speed_Wave_Deformation,ptin:_Invert_Speed_Wave_Deformation,varname:node_7009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5469-OUT,B-9405-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:6497,x:30781,y:32569,varname:node_6497,prsc:2;n:type:ShaderForge.SFN_Lerp,id:3759,x:31572,y:32216,varname:node_3759,prsc:2|A-8649-RGB,B-5717-RGB,T-1066-OUT;n:type:ShaderForge.SFN_Color,id:5717,x:31267,y:32083,ptovrint:False,ptlb:Light_Color_,ptin:_Light_Color_,varname:node_5717,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:8649,x:31267,y:32258,ptovrint:False,ptlb:Shadow_Color,ptin:_Shadow_Color,varname:node_8649,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:3454,x:32092,y:32431,varname:node_3454,prsc:2|A-2786-OUT,B-6752-OUT;n:type:ShaderForge.SFN_Multiply,id:2786,x:31931,y:32228,varname:node_2786,prsc:2|A-6724-RGB,B-3759-OUT;proporder:1956-6441-6727-7708-3126-7015-6724-1737-6058-5357-5469-822-7009-5717-8649;pass:END;sub:END;*/

Shader "Shader Forge/SH_Bouillon" {
    Properties {
        _Tessellation ("Tessellation", Range(0, 60)) = 15.53173
        _FanNoise ("FanNoise", Range(0, 500)) = 473.5
        _Waves ("Waves ", Range(0, 1)) = 0.5
        _SpecularColor ("Specular Color", Color) = (1,0,0,1)
        _Gloss ("Gloss", Range(1, 11)) = 6.463732
        _Speed_Wave_Rotation ("Speed_Wave_Rotation", Range(0, 1)) = 0.2514758
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Wave_Intensity ("Wave_Intensity", Range(0.01, 1)) = 0.01775527
        _node_6058 ("node_6058", 2D) = "bump" {}
        _node_5357 ("node_5357", 2D) = "white" {}
        _Speed_Wave_Deformation ("Speed_Wave_Deformation", Range(0, 1)) = 0.2227606
        [MaterialToggle] _Invert_Speed_Wave_Rotation ("Invert_Speed_Wave_Rotation", Float ) = 0.2514758
        [MaterialToggle] _Invert_Speed_Wave_Deformation ("Invert_Speed_Wave_Deformation", Float ) = 0.2227606
        _Light_Color_ ("Light_Color_", Color) = (1,1,1,1)
        _Shadow_Color ("Shadow_Color", Color) = (0,0,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Tessellation;
            uniform float4 _SpecularColor;
            uniform float _Gloss;
            uniform float _Speed_Wave_Rotation;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Wave_Intensity;
            uniform sampler2D _node_6058; uniform float4 _node_6058_ST;
            uniform sampler2D _node_5357; uniform float4 _node_5357_ST;
            uniform float _Speed_Wave_Deformation;
            uniform fixed _Invert_Speed_Wave_Rotation;
            uniform fixed _Invert_Speed_Wave_Deformation;
            uniform float4 _Light_Color_;
            uniform float4 _Shadow_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_9716 = _Time + _TimeEditor;
                    float node_7380 = (-1.0);
                    float2 node_4819 = (v.texcoord0+(node_9716.g*lerp( _Speed_Wave_Deformation, (_Speed_Wave_Deformation*node_7380), _Invert_Speed_Wave_Deformation )*float2(1,0)));
                    float4 _node_5357_var = tex2Dlod(_node_5357,float4(TRANSFORM_TEX(node_4819, _node_5357),0.0,0));
                    v.vertex.xyz += ((_node_5357_var.r*_Wave_Intensity)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9716 = _Time + _TimeEditor;
                float node_7380 = (-1.0);
                float2 node_2169 = ((node_9716.g*lerp( _Speed_Wave_Rotation, (_Speed_Wave_Rotation*node_7380), _Invert_Speed_Wave_Rotation )*float2(0,1))+i.uv0);
                float3 _node_6058_var = UnpackNormal(tex2D(_node_6058,TRANSFORM_TEX(node_2169, _node_6058)));
                float3 normalLocal = _node_6058_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_2169, _Diffuse));
                float3 emissive = _Diffuse_var.rgb;
                float3 node_3759 = lerp(_Shadow_Color.rgb,_Light_Color_.rgb,max(0,dot(normalDirection,lightDirection)));
                float node_6208 = pow(max(0,dot(lightDirection,viewReflectDirection)),exp(_Gloss));
                float3 finalColor = emissive + ((_Diffuse_var.rgb*node_3759)+(node_6208*_SpecularColor.rgb));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Tessellation;
            uniform float _Wave_Intensity;
            uniform sampler2D _node_5357; uniform float4 _node_5357_ST;
            uniform float _Speed_Wave_Deformation;
            uniform fixed _Invert_Speed_Wave_Deformation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_9716 = _Time + _TimeEditor;
                    float node_7380 = (-1.0);
                    float2 node_4819 = (v.texcoord0+(node_9716.g*lerp( _Speed_Wave_Deformation, (_Speed_Wave_Deformation*node_7380), _Invert_Speed_Wave_Deformation )*float2(1,0)));
                    float4 _node_5357_var = tex2Dlod(_node_5357,float4(TRANSFORM_TEX(node_4819, _node_5357),0.0,0));
                    v.vertex.xyz += ((_node_5357_var.r*_Wave_Intensity)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
