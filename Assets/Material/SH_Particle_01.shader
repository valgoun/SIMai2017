// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-3067-OUT,B-2053-RGB;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:1580,x:31546,y:32569,varname:node_1580,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:7328,x:31766,y:32569,varname:node_7328,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1580-UVOUT;n:type:ShaderForge.SFN_Length,id:4044,x:31980,y:32569,varname:node_4044,prsc:2|IN-7328-OUT;n:type:ShaderForge.SFN_Floor,id:2731,x:32169,y:32569,varname:node_2731,prsc:2|IN-4044-OUT;n:type:ShaderForge.SFN_OneMinus,id:3067,x:32349,y:32550,varname:node_3067,prsc:2|IN-2731-OUT;pass:END;sub:END;*/

Shader "Shader Forge/SH_Particle_01" {
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
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = ((1.0 - floor(length((i.uv0*2.0+-1.0))))*i.vertexColor.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
