// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33437,y:31969,varname:node_3138,prsc:2|emission-9887-RGB,alpha-6641-OUT;n:type:ShaderForge.SFN_TexCoord,id:9886,x:31854,y:32984,varname:node_9886,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:6410,x:31670,y:32285,varname:node_6410,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-3643-OUT,TEX-9594-TEX;n:type:ShaderForge.SFN_Lerp,id:6785,x:32143,y:32698,varname:node_6785,prsc:2|A-6125-OUT,B-9250-OUT,T-9886-V;n:type:ShaderForge.SFN_Time,id:1102,x:30158,y:32495,varname:node_1102,prsc:2;n:type:ShaderForge.SFN_Vector2,id:1606,x:30947,y:32284,varname:node_1606,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Vector2,id:2174,x:30932,y:32739,varname:node_2174,prsc:2,v1:0,v2:-1;n:type:ShaderForge.SFN_Multiply,id:9751,x:31140,y:32284,varname:node_9751,prsc:2|A-1102-T,B-1606-OUT,C-1268-OUT;n:type:ShaderForge.SFN_Multiply,id:5563,x:31135,y:32701,varname:node_5563,prsc:2|A-1102-T,B-2174-OUT,C-9220-OUT;n:type:ShaderForge.SFN_Add,id:3668,x:31344,y:32707,varname:node_3668,prsc:2|A-3607-UVOUT,B-5563-OUT;n:type:ShaderForge.SFN_Add,id:3643,x:31337,y:32284,varname:node_3643,prsc:2|A-3607-UVOUT,B-9751-OUT;n:type:ShaderForge.SFN_TexCoord,id:1867,x:30030,y:31357,varname:node_1867,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:1268,x:30790,y:32393,ptovrint:False,ptlb:Velocity_U,ptin:_Velocity_U,varname:node_1268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9220,x:30790,y:32853,ptovrint:False,ptlb:Velocity_V,ptin:_Velocity_V,varname:node_9220,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3005621,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:9594,x:31098,y:31834,ptovrint:False,ptlb:DIffuse,ptin:_DIffuse,varname:node_9594,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3441,x:31664,y:32702,varname:node_3441,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-3668-OUT,TEX-9594-TEX;n:type:ShaderForge.SFN_Multiply,id:6125,x:31879,y:32547,varname:node_6125,prsc:2|A-6410-R,B-3441-G;n:type:ShaderForge.SFN_Slider,id:9250,x:31714,y:32877,ptovrint:False,ptlb:Remap,ptin:_Remap,varname:node_9250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Posterize,id:4303,x:32392,y:32870,varname:node_4303,prsc:2|IN-6785-OUT,STPS-2999-OUT;n:type:ShaderForge.SFN_OneMinus,id:6123,x:32752,y:32670,varname:node_6123,prsc:2|IN-3709-OUT;n:type:ShaderForge.SFN_Color,id:9887,x:33102,y:31796,ptovrint:False,ptlb:node_9887,ptin:_node_9887,varname:node_9887,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Sin,id:9688,x:32081,y:31515,varname:node_9688,prsc:2|IN-1849-OUT;n:type:ShaderForge.SFN_Multiply,id:1849,x:31848,y:31515,varname:node_1849,prsc:2|A-4083-R,B-1555-OUT;n:type:ShaderForge.SFN_Slider,id:1555,x:31691,y:31696,ptovrint:False,ptlb:HorizontalSlide,ptin:_HorizontalSlide,varname:node_1555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:13.18798,max:100;n:type:ShaderForge.SFN_OneMinus,id:1342,x:32294,y:31969,varname:node_1342,prsc:2|IN-146-OUT;n:type:ShaderForge.SFN_Multiply,id:146,x:32061,y:31969,varname:node_146,prsc:2|A-1664-OUT,B-6524-OUT;n:type:ShaderForge.SFN_Vector1,id:6524,x:32047,y:31899,varname:node_6524,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3175,x:32775,y:31726,varname:node_3175,prsc:2|A-7095-OUT,B-3448-OUT;n:type:ShaderForge.SFN_Clamp01,id:7095,x:32553,y:31969,varname:node_7095,prsc:2|IN-1342-OUT;n:type:ShaderForge.SFN_Clamp01,id:6613,x:32093,y:31646,varname:node_6613,prsc:2|IN-9688-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1664,x:31773,y:31963,varname:node_1664,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1867-V;n:type:ShaderForge.SFN_Add,id:6641,x:33210,y:32285,varname:node_6641,prsc:2|A-3175-OUT,B-9202-OUT;n:type:ShaderForge.SFN_Power,id:8987,x:32340,y:31518,varname:node_8987,prsc:2|VAL-6613-OUT,EXP-3520-OUT;n:type:ShaderForge.SFN_Slider,id:3520,x:32262,y:31698,ptovrint:False,ptlb:Horizontal_Thickness,ptin:_Horizontal_Thickness,varname:node_3520,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Clamp01,id:3448,x:32502,y:31518,varname:node_3448,prsc:2|IN-8987-OUT;n:type:ShaderForge.SFN_Multiply,id:9202,x:32935,y:32408,varname:node_9202,prsc:2|A-379-OUT,B-8797-OUT;n:type:ShaderForge.SFN_Multiply,id:7673,x:32353,y:32452,varname:node_7673,prsc:2|A-1664-OUT,B-7953-OUT;n:type:ShaderForge.SFN_Vector1,id:7953,x:32309,y:32586,varname:node_7953,prsc:2,v1:1.5;n:type:ShaderForge.SFN_OneMinus,id:379,x:32545,y:32452,varname:node_379,prsc:2|IN-7673-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3709,x:32591,y:32749,ptovrint:False,ptlb:Posterize,ptin:_Posterize,varname:node_3709,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6785-OUT,B-4303-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2999,x:32392,y:33034,ptovrint:False,ptlb:Posterize_Intensity,ptin:_Posterize_Intensity,varname:node_2999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Add,id:444,x:32984,y:32676,varname:node_444,prsc:2|A-6123-OUT,B-6123-OUT;n:type:ShaderForge.SFN_Multiply,id:7134,x:33214,y:32666,varname:node_7134,prsc:2|A-444-OUT,B-444-OUT,C-2793-OUT;n:type:ShaderForge.SFN_Clamp01,id:3451,x:33387,y:32666,varname:node_3451,prsc:2|IN-7134-OUT;n:type:ShaderForge.SFN_Vector1,id:2793,x:33214,y:32791,varname:node_2793,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Add,id:8797,x:32767,y:32502,varname:node_8797,prsc:2|A-6123-OUT,B-3451-OUT;n:type:ShaderForge.SFN_Vector2,id:7613,x:30472,y:31728,varname:node_7613,prsc:2,v1:0,v2:-1;n:type:ShaderForge.SFN_Multiply,id:5022,x:30682,y:31710,varname:node_5022,prsc:2|A-2189-T,B-7613-OUT,C-4609-OUT;n:type:ShaderForge.SFN_Add,id:747,x:30884,y:31696,varname:node_747,prsc:2|A-4824-OUT,B-5022-OUT;n:type:ShaderForge.SFN_Slider,id:4609,x:30315,y:31850,ptovrint:False,ptlb:Wave_Velocity,ptin:_Wave_Velocity,varname:node_4609,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2269047,max:1;n:type:ShaderForge.SFN_Tex2d,id:4083,x:31512,y:31496,varname:node_4083,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-747-OUT,TEX-9594-TEX;n:type:ShaderForge.SFN_TexCoord,id:3607,x:30720,y:32515,varname:node_3607,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2189,x:29576,y:31587,varname:node_2189,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8157,x:29849,y:30267,varname:node_8157,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-2880-UVOUT,TEX-1229-TEX;n:type:ShaderForge.SFN_TexCoord,id:415,x:28630,y:30243,varname:node_415,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2027,x:29154,y:30406,varname:node_2027,prsc:2|A-415-UVOUT,B-5222-OUT;n:type:ShaderForge.SFN_Vector1,id:5222,x:28762,y:30649,varname:node_5222,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Tex2d,id:3362,x:29849,y:30473,varname:node_3362,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-4832-UVOUT,TEX-1229-TEX;n:type:ShaderForge.SFN_Tex2d,id:8334,x:29849,y:30644,varname:node_8334,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-4050-UVOUT,TEX-1229-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1229,x:29184,y:30167,ptovrint:False,ptlb:node_1229,ptin:_node_1229,varname:node_1229,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5603,x:29378,y:30633,varname:node_5603,prsc:2|A-2027-OUT,B-5222-OUT;n:type:ShaderForge.SFN_Panner,id:2880,x:29654,y:30267,varname:node_2880,prsc:2,spu:0.1,spv:0.1|UVIN-415-UVOUT,DIST-8030-OUT;n:type:ShaderForge.SFN_Panner,id:4832,x:29641,y:30413,varname:node_4832,prsc:2,spu:0.1,spv:-0.1|UVIN-2027-OUT,DIST-8030-OUT;n:type:ShaderForge.SFN_Panner,id:4050,x:29598,y:30585,varname:node_4050,prsc:2,spu:0,spv:-0.1|UVIN-5603-OUT,DIST-8030-OUT;n:type:ShaderForge.SFN_Multiply,id:8030,x:29183,y:30705,varname:node_8030,prsc:2|A-2189-T,B-1999-OUT;n:type:ShaderForge.SFN_Slider,id:1999,x:28668,y:30814,ptovrint:False,ptlb:warp time scale,ptin:_warptimescale,varname:node_1999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Append,id:6018,x:30140,y:30418,varname:node_6018,prsc:2|A-8157-R,B-3362-G;n:type:ShaderForge.SFN_Append,id:847,x:30140,y:30611,varname:node_847,prsc:2|A-3362-G,B-8334-B;n:type:ShaderForge.SFN_Multiply,id:2352,x:30429,y:30346,varname:node_2352,prsc:2|A-6018-OUT,B-6467-OUT;n:type:ShaderForge.SFN_Multiply,id:5349,x:30429,y:30583,varname:node_5349,prsc:2|A-847-OUT,B-6467-OUT;n:type:ShaderForge.SFN_Vector1,id:6467,x:30055,y:30265,varname:node_6467,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:8705,x:30778,y:30341,varname:node_8705,prsc:2|A-2352-OUT,B-415-UVOUT;n:type:ShaderForge.SFN_Subtract,id:5477,x:31094,y:30750,varname:node_5477,prsc:2|A-8705-OUT,B-5349-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4824,x:30593,y:31394,ptovrint:False,ptlb:Deformation,ptin:_Deformation,varname:node_4824,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1867-UVOUT,B-5477-OUT;proporder:1268-9220-9594-9250-9887-1555-3520-3709-2999-4609-1229-1999-4824;pass:END;sub:END;*/

Shader "Shader Forge/cylinderShader" {
    Properties {
        _Velocity_U ("Velocity_U", Range(0, 1)) = 1
        _Velocity_V ("Velocity_V", Range(0, 1)) = 0.3005621
        _DIffuse ("DIffuse", 2D) = "white" {}
        _Remap ("Remap", Range(0, 1)) = 1
        _node_9887 ("node_9887", Color) = (1,1,1,1)
        _HorizontalSlide ("HorizontalSlide", Range(0, 100)) = 13.18798
        _Horizontal_Thickness ("Horizontal_Thickness", Range(0, 10)) = 10
        [MaterialToggle] _Posterize ("Posterize", Float ) = 1
        _Posterize_Intensity ("Posterize_Intensity", Float ) = 4
        _Wave_Velocity ("Wave_Velocity", Range(0, 1)) = 0.2269047
        _node_1229 ("node_1229", 2D) = "white" {}
        _warptimescale ("warp time scale", Range(0, 1)) = 1
        [MaterialToggle] _Deformation ("Deformation", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Velocity_U;
            uniform float _Velocity_V;
            uniform sampler2D _DIffuse; uniform float4 _DIffuse_ST;
            uniform float _Remap;
            uniform float4 _node_9887;
            uniform float _HorizontalSlide;
            uniform float _Horizontal_Thickness;
            uniform fixed _Posterize;
            uniform float _Posterize_Intensity;
            uniform float _Wave_Velocity;
            uniform sampler2D _node_1229; uniform float4 _node_1229_ST;
            uniform float _warptimescale;
            uniform fixed _Deformation;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float3 emissive = _node_9887.rgb;
                float3 finalColor = emissive;
                float node_1664 = i.uv0.g.r;
                float4 node_2189 = _Time + _TimeEditor;
                float node_8030 = (node_2189.g*_warptimescale);
                float2 node_2880 = (i.uv0+node_8030*float2(0.1,0.1));
                float4 node_8157 = tex2D(_node_1229,TRANSFORM_TEX(node_2880, _node_1229));
                float node_5222 = 0.7;
                float2 node_2027 = (i.uv0*node_5222);
                float2 node_4832 = (node_2027+node_8030*float2(0.1,-0.1));
                float4 node_3362 = tex2D(_node_1229,TRANSFORM_TEX(node_4832, _node_1229));
                float node_6467 = 0.1;
                float2 node_4050 = ((node_2027*node_5222)+node_8030*float2(0,-0.1));
                float4 node_8334 = tex2D(_node_1229,TRANSFORM_TEX(node_4050, _node_1229));
                float2 node_747 = (lerp( i.uv0, (((float2(node_8157.r,node_3362.g)*node_6467)+i.uv0)-(float2(node_3362.g,node_8334.b)*node_6467)), _Deformation )+(node_2189.g*float2(0,-1)*_Wave_Velocity));
                float4 node_4083 = tex2D(_DIffuse,TRANSFORM_TEX(node_747, _DIffuse));
                float4 node_1102 = _Time + _TimeEditor;
                float2 node_3643 = (i.uv0+(node_1102.g*float2(1,0)*_Velocity_U));
                float4 node_6410 = tex2D(_DIffuse,TRANSFORM_TEX(node_3643, _DIffuse));
                float2 node_3668 = (i.uv0+(node_1102.g*float2(0,-1)*_Velocity_V));
                float4 node_3441 = tex2D(_DIffuse,TRANSFORM_TEX(node_3668, _DIffuse));
                float node_6785 = lerp((node_6410.r*node_3441.g),_Remap,i.uv0.g);
                float node_6123 = (1.0 - lerp( node_6785, floor(node_6785 * _Posterize_Intensity) / (_Posterize_Intensity - 1), _Posterize ));
                float node_444 = (node_6123+node_6123);
                return fixed4(finalColor,((saturate((1.0 - (node_1664*2.0)))*saturate(pow(saturate(sin((node_4083.r*_HorizontalSlide))),_Horizontal_Thickness)))+((1.0 - (node_1664*1.5))*(node_6123+saturate((node_444*node_444*0.3))))));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
