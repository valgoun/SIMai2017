// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-2094-RGB,alpha-1936-OUT;n:type:ShaderForge.SFN_Tex2d,id:6593,x:32356,y:32856,ptovrint:False,ptlb:node_6593,ptin:_node_6593,varname:node_6593,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:de52ea61dc59aa94db0d22238c623a3a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2094,x:32744,y:32447,ptovrint:False,ptlb:node_2094,ptin:_node_2094,varname:node_2094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:eec8e9aac29bac949bc21f7ee12e7fc7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:3204,x:31837,y:32662,varname:node_3204,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:4026,x:32192,y:32668,varname:node_4026,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4943-OUT;n:type:ShaderForge.SFN_Length,id:4227,x:32356,y:32668,varname:node_4227,prsc:2|IN-4026-OUT;n:type:ShaderForge.SFN_Multiply,id:4943,x:32023,y:32668,varname:node_4943,prsc:2|A-3204-UVOUT,B-872-OUT;n:type:ShaderForge.SFN_Vector1,id:872,x:31837,y:32850,varname:node_872,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:1936,x:32788,y:32760,varname:node_1936,prsc:2|A-9579-OUT,B-6593-R;n:type:ShaderForge.SFN_Clamp01,id:9579,x:32529,y:32649,varname:node_9579,prsc:2|IN-4227-OUT;proporder:6593-2094;pass:END;sub:END;*/

Shader "Shader Forge/dash" {
    Properties {
        _node_6593 ("node_6593", 2D) = "white" {}
        _node_2094 ("node_2094", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
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
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_6593; uniform float4 _node_6593_ST;
            uniform sampler2D _node_2094; uniform float4 _node_2094_ST;
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
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 _node_2094_var = tex2D(_node_2094,TRANSFORM_TEX(i.uv0, _node_2094));
                float3 emissive = _node_2094_var.rgb;
                float3 finalColor = emissive;
                float4 _node_6593_var = tex2D(_node_6593,TRANSFORM_TEX(i.uv0, _node_6593));
                return fixed4(finalColor,(saturate(length(((i.uv0*4.0)*2.0+-1.0)))*_node_6593_var.r));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
