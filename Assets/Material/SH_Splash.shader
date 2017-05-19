// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:34008,y:32724,varname:node_4795,prsc:2|diff-4251-OUT,spec-7125-OUT,gloss-7125-OUT,alpha-3507-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31341,y:32819,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4476f46837688e045b48758217d24d55,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:9944,x:33992,y:32141,varname:_Vcols,prsc:2|IN-9-OUT;n:type:ShaderForge.SFN_Slider,id:6154,x:33388,y:32043,ptovrint:False,ptlb:_Vcols,ptin:__Vcols,varname:node_6154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3599791,max:1;n:type:ShaderForge.SFN_OneMinus,id:2385,x:32168,y:33045,varname:node_2385,prsc:2|IN-6074-G;n:type:ShaderForge.SFN_Multiply,id:354,x:32650,y:32948,varname:node_354,prsc:2|A-8798-OUT,B-5907-OUT,C-2385-OUT;n:type:ShaderForge.SFN_Add,id:8798,x:31858,y:32613,varname:node_8798,prsc:2|A-5833-OUT,B-6074-R;n:type:ShaderForge.SFN_Get,id:5833,x:31449,y:32470,varname:node_5833,prsc:2|IN-9944-OUT;n:type:ShaderForge.SFN_Floor,id:2918,x:32923,y:33004,varname:node_2918,prsc:2|IN-354-OUT;n:type:ShaderForge.SFN_Add,id:195,x:31851,y:32321,varname:node_195,prsc:2|A-6074-R,B-5833-OUT,C-5156-OUT;n:type:ShaderForge.SFN_Vector1,id:5156,x:31575,y:32270,varname:node_5156,prsc:2,v1:-1;n:type:ShaderForge.SFN_Clamp01,id:1352,x:32075,y:32321,varname:node_1352,prsc:2|IN-195-OUT;n:type:ShaderForge.SFN_OneMinus,id:7762,x:32349,y:32326,varname:node_7762,prsc:2|IN-1352-OUT;n:type:ShaderForge.SFN_Power,id:5907,x:32445,y:32513,varname:node_5907,prsc:2|VAL-7762-OUT,EXP-3813-OUT;n:type:ShaderForge.SFN_Vector1,id:3813,x:32243,y:32547,varname:node_3813,prsc:2,v1:0.5;n:type:ShaderForge.SFN_RemapRange,id:9,x:33831,y:31934,varname:node_9,prsc:2,frmn:0,frmx:1,tomn:-0.1,tomx:1.8|IN-6154-OUT;n:type:ShaderForge.SFN_Fresnel,id:3741,x:32867,y:32724,varname:node_3741,prsc:2|NRM-5543-OUT;n:type:ShaderForge.SFN_NormalVector,id:5543,x:32689,y:32724,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector3,id:7641,x:32891,y:32569,varname:node_7641,prsc:2,v1:0.6470588,v2:0.3399356,v3:0.2759516;n:type:ShaderForge.SFN_Lerp,id:4251,x:33484,y:32547,varname:node_4251,prsc:2|A-7641-OUT,B-9677-OUT,T-2400-OUT;n:type:ShaderForge.SFN_Vector3,id:9677,x:32891,y:32459,varname:node_9677,prsc:2,v1:1,v2:0.5131845,v3:0.4117647;n:type:ShaderForge.SFN_Vector1,id:7125,x:33585,y:32790,varname:node_7125,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:3507,x:33310,y:33037,varname:node_3507,prsc:2|IN-1517-OUT;n:type:ShaderForge.SFN_Power,id:8894,x:32567,y:32139,varname:node_8894,prsc:2|VAL-7762-OUT,EXP-850-OUT;n:type:ShaderForge.SFN_Vector1,id:850,x:32324,y:32174,varname:node_850,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:6086,x:33125,y:32793,varname:node_6086,prsc:2|A-8926-OUT,B-3741-OUT,C-7552-OUT;n:type:ShaderForge.SFN_Round,id:8676,x:32760,y:32028,varname:node_8676,prsc:2|IN-8894-OUT;n:type:ShaderForge.SFN_Multiply,id:8926,x:32969,y:32187,varname:node_8926,prsc:2|A-8676-OUT,B-8894-OUT;n:type:ShaderForge.SFN_Clamp01,id:2400,x:33284,y:32731,varname:node_2400,prsc:2|IN-6086-OUT;n:type:ShaderForge.SFN_OneMinus,id:7552,x:32632,y:32524,varname:node_7552,prsc:2|IN-5907-OUT;n:type:ShaderForge.SFN_Multiply,id:1517,x:32974,y:33231,varname:node_1517,prsc:2|A-2918-OUT,B-2385-OUT;proporder:6074-6154;pass:END;sub:END;*/

Shader "Shader Forge/SH_Splash" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        __Vcols ("_Vcols", Range(0, 1)) = 0.3599791
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float __Vcols;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_7125 = 0.0;
                float gloss = node_7125;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(node_7125,node_7125,node_7125);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float _Vcols = (__Vcols*1.9+-0.1);
                float node_5833 = _Vcols;
                float node_7762 = (1.0 - saturate((_MainTex_var.r+node_5833+(-1.0))));
                float node_8894 = pow(node_7762,2.0);
                float node_3741 = (1.0-max(0,dot(i.normalDir, viewDirection)));
                float node_5907 = pow(node_7762,0.5);
                float3 diffuseColor = lerp(float3(0.6470588,0.3399356,0.2759516),float3(1,0.5131845,0.4117647),saturate(((round(node_8894)*node_8894)+node_3741+(1.0 - node_5907))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_2385 = (1.0 - _MainTex_var.g);
                float node_354 = ((node_5833+_MainTex_var.r)*node_5907*node_2385);
                fixed4 finalRGBA = fixed4(finalColor,saturate((floor(node_354)*node_2385)));
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float __Vcols;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_7125 = 0.0;
                float gloss = node_7125;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(node_7125,node_7125,node_7125);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float _Vcols = (__Vcols*1.9+-0.1);
                float node_5833 = _Vcols;
                float node_7762 = (1.0 - saturate((_MainTex_var.r+node_5833+(-1.0))));
                float node_8894 = pow(node_7762,2.0);
                float node_3741 = (1.0-max(0,dot(i.normalDir, viewDirection)));
                float node_5907 = pow(node_7762,0.5);
                float3 diffuseColor = lerp(float3(0.6470588,0.3399356,0.2759516),float3(1,0.5131845,0.4117647),saturate(((round(node_8894)*node_8894)+node_3741+(1.0 - node_5907))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_2385 = (1.0 - _MainTex_var.g);
                float node_354 = ((node_5833+_MainTex_var.r)*node_5907*node_2385);
                fixed4 finalRGBA = fixed4(finalColor * saturate((floor(node_354)*node_2385)),0);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
