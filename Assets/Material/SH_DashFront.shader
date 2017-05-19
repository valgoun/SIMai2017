// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33538,y:33725,varname:node_4795,prsc:2|emission-4067-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32096,y:33105,varname:node_2393,prsc:2|B-2053-RGB;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31916,y:33126,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Sin,id:3383,x:32413,y:32643,varname:node_3383,prsc:2|IN-755-OUT;n:type:ShaderForge.SFN_Multiply,id:4180,x:32207,y:32579,varname:node_4180,prsc:2|A-2291-OUT,B-4967-OUT;n:type:ShaderForge.SFN_Vector1,id:4967,x:31981,y:32488,varname:node_4967,prsc:2,v1:20;n:type:ShaderForge.SFN_RemapRange,id:7635,x:32594,y:32767,varname:node_7635,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3383-OUT;n:type:ShaderForge.SFN_Add,id:755,x:32312,y:32336,varname:node_755,prsc:2|A-2356-OUT,B-4180-OUT;n:type:ShaderForge.SFN_Time,id:3631,x:31717,y:32179,varname:node_3631,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2356,x:32079,y:32190,varname:node_2356,prsc:2|A-1012-OUT,B-3631-TTR;n:type:ShaderForge.SFN_Vector1,id:1012,x:31884,y:32066,varname:node_1012,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:316,x:32360,y:32986,varname:node_316,prsc:2|A-2291-OUT,B-2291-OUT,C-2291-OUT,D-2291-OUT;n:type:ShaderForge.SFN_Add,id:4067,x:33054,y:33199,varname:node_4067,prsc:2|A-3410-OUT,B-316-OUT;n:type:ShaderForge.SFN_TexCoord,id:6510,x:31170,y:32519,varname:node_6510,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:6983,x:31545,y:32563,varname:node_6983,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6510-UVOUT;n:type:ShaderForge.SFN_Length,id:5095,x:31736,y:32563,varname:node_5095,prsc:2|IN-6983-OUT;n:type:ShaderForge.SFN_OneMinus,id:2291,x:31927,y:32678,varname:node_2291,prsc:2|IN-5095-OUT;n:type:ShaderForge.SFN_Multiply,id:3410,x:32840,y:32908,varname:node_3410,prsc:2|A-7635-OUT,B-2291-OUT;pass:END;sub:END;*/

Shader "Shader Forge/SH_DashFront" {
    Properties {
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_3631 = _Time + _TimeEditor;
                float node_5095 = length((i.uv0*2.0+-1.0));
                float node_2291 = (1.0 - node_5095);
                float node_7635 = (sin(((5.0*node_3631.a)+(node_2291*20.0)))*0.5+0.5);
                float node_4067 = ((node_7635*node_2291)+(node_2291*node_2291*node_2291*node_2291));
                float3 emissive = float3(node_4067,node_4067,node_4067);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0.5,0.5,0.5,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
