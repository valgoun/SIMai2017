// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33142,y:32621,varname:node_3138,prsc:2|emission-1954-RGB,alpha-4653-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5826,x:30953,y:33150,varname:node_5826,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:2149,x:30953,y:33288,varname:node_2149,prsc:2;n:type:ShaderForge.SFN_Subtract,id:2731,x:31133,y:33173,varname:node_2731,prsc:2|A-5826-XYZ,B-2149-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:5214,x:31930,y:33153,varname:node_5214,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9808-OUT;n:type:ShaderForge.SFN_RemapRange,id:826,x:31241,y:32938,varname:node_826,prsc:2,frmn:0,frmx:1,tomn:-10,tomx:10|IN-4016-OUT;n:type:ShaderForge.SFN_Slider,id:4016,x:30842,y:32950,ptovrint:False,ptlb:Remap,ptin:_Remap,varname:node_4016,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5313094,max:1;n:type:ShaderForge.SFN_Add,id:3419,x:32044,y:32996,varname:node_3419,prsc:2|A-826-OUT,B-5214-OUT;n:type:ShaderForge.SFN_Color,id:1954,x:32107,y:32796,ptovrint:False,ptlb:node_1954,ptin:_node_1954,varname:node_1954,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8262,x:30453,y:32137,varname:node_8157,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-4115-UVOUT,TEX-8854-TEX;n:type:ShaderForge.SFN_TexCoord,id:5919,x:29234,y:32113,varname:node_5919,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4202,x:29758,y:32276,varname:node_4202,prsc:2|A-5919-UVOUT,B-9691-OUT;n:type:ShaderForge.SFN_Vector1,id:9691,x:29366,y:32519,varname:node_9691,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Tex2d,id:5647,x:30453,y:32343,varname:node_3362,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-1280-UVOUT,TEX-8854-TEX;n:type:ShaderForge.SFN_Tex2d,id:4752,x:30453,y:32514,varname:node_8334,prsc:2,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-4350-UVOUT,TEX-8854-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8854,x:29891,y:31823,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_1229,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9629,x:29982,y:32503,varname:node_9629,prsc:2|A-4202-OUT,B-9691-OUT;n:type:ShaderForge.SFN_Panner,id:4115,x:30258,y:32137,varname:node_4115,prsc:2,spu:0.1,spv:0.1|UVIN-5919-UVOUT,DIST-2805-OUT;n:type:ShaderForge.SFN_Panner,id:1280,x:30245,y:32283,varname:node_1280,prsc:2,spu:0.1,spv:-0.1|UVIN-4202-OUT,DIST-2805-OUT;n:type:ShaderForge.SFN_Panner,id:4350,x:30202,y:32455,varname:node_4350,prsc:2,spu:0,spv:-0.1|UVIN-9629-OUT,DIST-2805-OUT;n:type:ShaderForge.SFN_Multiply,id:2805,x:29787,y:32575,varname:node_2805,prsc:2|A-1009-T,B-9428-OUT;n:type:ShaderForge.SFN_Slider,id:9428,x:29272,y:32684,ptovrint:False,ptlb:warp time scale,ptin:_warptimescale,varname:node_1999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Append,id:3910,x:30744,y:32288,varname:node_3910,prsc:2|A-8262-R,B-5647-G;n:type:ShaderForge.SFN_Append,id:4058,x:30744,y:32481,varname:node_4058,prsc:2|A-5647-G,B-4752-B;n:type:ShaderForge.SFN_Multiply,id:8320,x:31033,y:32216,varname:node_8320,prsc:2|A-3910-OUT,B-7517-OUT;n:type:ShaderForge.SFN_Multiply,id:2285,x:31033,y:32453,varname:node_2285,prsc:2|A-4058-OUT,B-7517-OUT;n:type:ShaderForge.SFN_Vector1,id:7517,x:30659,y:32135,varname:node_7517,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:5033,x:31382,y:32211,varname:node_5033,prsc:2|A-8320-OUT,B-5919-UVOUT;n:type:ShaderForge.SFN_Subtract,id:7716,x:31712,y:32270,varname:node_7716,prsc:2|A-5033-OUT,B-2285-OUT;n:type:ShaderForge.SFN_Time,id:1009,x:29094,y:32564,varname:node_1009,prsc:2;n:type:ShaderForge.SFN_Add,id:9808,x:31571,y:33155,varname:node_9808,prsc:2|A-7716-OUT,B-2731-OUT;n:type:ShaderForge.SFN_Multiply,id:4328,x:32539,y:32971,varname:node_4328,prsc:2|A-3419-OUT,B-518-OUT;n:type:ShaderForge.SFN_Slider,id:518,x:32117,y:33155,ptovrint:False,ptlb:Main_Opacity,ptin:_Main_Opacity,varname:node_518,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Clamp01,id:4653,x:32695,y:32959,varname:node_4653,prsc:2|IN-4328-OUT;n:type:ShaderForge.SFN_Multiply,id:7311,x:32458,y:32433,varname:node_7311,prsc:2|A-7716-OUT,B-4528-OUT;n:type:ShaderForge.SFN_NormalVector,id:4528,x:32103,y:32346,prsc:2,pt:False;proporder:4016-1954-8854-9428-518;pass:END;sub:END;*/

Shader "Shader Forge/smoke" {
    Properties {
        _Remap ("Remap", Range(0, 1)) = 0.5313094
        _node_1954 ("node_1954", Color) = (1,1,1,1)
        _Cloud ("Cloud", 2D) = "white" {}
        _warptimescale ("warp time scale", Range(0, 1)) = 1
        _Main_Opacity ("Main_Opacity", Range(0, 1)) = 1
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
            uniform float _Remap;
            uniform float4 _node_1954;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            uniform float _warptimescale;
            uniform float _Main_Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float3 emissive = _node_1954.rgb;
                float3 finalColor = emissive;
                float4 node_1009 = _Time + _TimeEditor;
                float node_2805 = (node_1009.g*_warptimescale);
                float2 node_4115 = (i.uv0+node_2805*float2(0.1,0.1));
                float4 node_8157 = tex2D(_Cloud,TRANSFORM_TEX(node_4115, _Cloud));
                float node_9691 = 0.7;
                float2 node_4202 = (i.uv0*node_9691);
                float2 node_1280 = (node_4202+node_2805*float2(0.1,-0.1));
                float4 node_3362 = tex2D(_Cloud,TRANSFORM_TEX(node_1280, _Cloud));
                float node_7517 = 0.1;
                float2 node_4350 = ((node_4202*node_9691)+node_2805*float2(0,-0.1));
                float4 node_8334 = tex2D(_Cloud,TRANSFORM_TEX(node_4350, _Cloud));
                float2 node_7716 = (((float2(node_8157.r,node_3362.g)*node_7517)+i.uv0)-(float2(node_3362.g,node_8334.b)*node_7517));
                float node_4653 = saturate((((_Remap*20.0+-10.0)+(float3(node_7716,0.0)+(i.posWorld.rgb-objPos.rgb)).g)*_Main_Opacity));
                return fixed4(finalColor,node_4653);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
