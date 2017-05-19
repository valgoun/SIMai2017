// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33840,y:32138,varname:node_9361,prsc:2|normal-1218-OUT,emission-2337-OUT,custl-5085-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:33355,y:32514,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:33355,y:32380,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31142,y:32659,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31142,y:32787,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31142,y:32938,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:31564,y:32776,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:31354,y:32876,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:32023,y:31506,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:31340,y:33150,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:30799,y:33152,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2938457,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:31552,y:32945,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:33568,y:32344,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-1347-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31128,y:33152,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:31552,y:33100,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:3168,x:32481,y:32517,varname:node_3168,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:1347,x:33198,y:32238,varname:node_1347,prsc:2|A-2337-OUT,B-8138-OUT;n:type:ShaderForge.SFN_Add,id:7832,x:32674,y:32724,varname:node_7832,prsc:2|A-7361-OUT,B-3935-OUT;n:type:ShaderForge.SFN_Multiply,id:3935,x:32437,y:32878,varname:node_3935,prsc:2|A-5267-OUT,B-4865-RGB;n:type:ShaderForge.SFN_Tex2d,id:5164,x:31331,y:32287,ptovrint:False,ptlb:T_noise,ptin:_T_noise,varname:node_5164,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5355ea536b87ddf419e7e8a88b9cde84,ntxv:0,isnm:False|UVIN-8873-OUT;n:type:ShaderForge.SFN_Fresnel,id:8874,x:32474,y:32228,varname:node_8874,prsc:2|NRM-7197-OUT,EXP-3230-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3230,x:32460,y:32132,ptovrint:False,ptlb:Fresnel_Size,ptin:_Fresnel_Size,varname:node_3230,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Posterize,id:3555,x:32697,y:32377,varname:node_3555,prsc:2|IN-9795-OUT,STPS-3168-OUT;n:type:ShaderForge.SFN_Add,id:5654,x:31550,y:32485,varname:node_5654,prsc:2|A-5164-R,B-7782-OUT;n:type:ShaderForge.SFN_Multiply,id:6337,x:32041,y:32694,varname:node_6337,prsc:2|A-3557-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Clamp01,id:9062,x:32221,y:32694,varname:node_9062,prsc:2|IN-6337-OUT;n:type:ShaderForge.SFN_Time,id:9810,x:30505,y:32246,varname:node_9810,prsc:2;n:type:ShaderForge.SFN_Vector2,id:9869,x:30505,y:32373,varname:node_9869,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Add,id:8873,x:31054,y:32221,varname:node_8873,prsc:2|A-8300-XYZ,B-8969-OUT;n:type:ShaderForge.SFN_TexCoord,id:5098,x:30582,y:32067,varname:node_5098,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:8969,x:30811,y:32273,varname:node_8969,prsc:2|A-9810-T,B-2778-OUT;n:type:ShaderForge.SFN_Posterize,id:8138,x:32896,y:32551,varname:node_8138,prsc:2|IN-7832-OUT,STPS-3168-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8300,x:30768,y:32012,varname:node_8300,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9795,x:32481,y:32377,varname:node_9795,prsc:2|A-5164-R,B-8874-OUT;n:type:ShaderForge.SFN_NormalVector,id:7197,x:32261,y:32225,prsc:2,pt:False;n:type:ShaderForge.SFN_Lerp,id:7361,x:32418,y:32654,varname:node_7361,prsc:2|A-878-RGB,B-3804-RGB,T-9062-OUT;n:type:ShaderForge.SFN_Color,id:3804,x:32037,y:31843,ptovrint:False,ptlb:Light_Color,ptin:_Light_Color,varname:node_3804,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:878,x:32037,y:32010,ptovrint:False,ptlb:Shadow_Color,ptin:_Shadow_Color,varname:node_878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:2337,x:33289,y:31914,varname:node_2337,prsc:2|A-1693-OUT,B-8586-RGB,T-3555-OUT;n:type:ShaderForge.SFN_Color,id:8586,x:32037,y:31672,ptovrint:False,ptlb:Fresnel_Color,ptin:_Fresnel_Color,varname:node_8586,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3297,x:32023,y:31324,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_3297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9433,x:32549,y:31505,varname:node_9433,prsc:2|A-3297-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Clamp01,id:3557,x:31748,y:32531,varname:node_3557,prsc:2|IN-5654-OUT;n:type:ShaderForge.SFN_Slider,id:2778,x:30433,y:32506,ptovrint:False,ptlb:Velocity,ptin:_Velocity,varname:node_2778,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:8895,x:33193,y:31524,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_8895,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9998,x:32549,y:31301,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_9998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:9401,x:32799,y:31394,varname:node_9401,prsc:2|A-9998-RGB,B-9433-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1693,x:33051,y:31731,ptovrint:False,ptlb:Emissive ON,ptin:_EmissiveON,varname:node_1693,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9433-OUT,B-9401-OUT;n:type:ShaderForge.SFN_Multiply,id:1218,x:33525,y:31725,varname:node_1218,prsc:2|A-8895-RGB,B-3993-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:3993,x:33309,y:31809,ptovrint:False,ptlb:NormalOFF,ptin:_NormalOFF,varname:node_3993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;proporder:3804-878-5927-8586-3230-5164-4865-5328-3297-2778-8895-9998-1693-3993;pass:END;sub:END;*/

Shader "Shader Forge/Custo" {
    Properties {
        _Light_Color ("Light_Color", Color) = (1,1,1,1)
        _Shadow_Color ("Shadow_Color", Color) = (0,0,0,1)
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Fresnel_Color ("Fresnel_Color", Color) = (1,1,1,1)
        _Fresnel_Size ("Fresnel_Size", Float ) = 10
        _T_noise ("T_noise", 2D) = "white" {}
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.2938457
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Velocity ("Velocity", Range(0, 1)) = 0
        _Normal ("Normal", 2D) = "bump" {}
        _Emissive ("Emissive", 2D) = "white" {}
        [MaterialToggle] _EmissiveON ("Emissive ON", Float ) = 0
        [MaterialToggle] _NormalOFF ("NormalOFF", Float ) = 1
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Gloss;
            uniform sampler2D _T_noise; uniform float4 _T_noise_ST;
            uniform float _Fresnel_Size;
            uniform float4 _Light_Color;
            uniform float4 _Shadow_Color;
            uniform float4 _Fresnel_Color;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Velocity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform fixed _EmissiveON;
            uniform fixed _NormalOFF;
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
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = (_Normal_var.rgb*_NormalOFF);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_9433 = (_Diffuse_var.rgb*_Color.rgb);
                float4 _Emissive_var = tex2D(_Emissive,TRANSFORM_TEX(i.uv0, _Emissive));
                float4 node_9810 = _Time + _TimeEditor;
                float3 node_8873 = (i.posWorld.rgb+(node_9810.g*_Velocity));
                float4 _T_noise_var = tex2D(_T_noise,TRANSFORM_TEX(node_8873, _T_noise));
                float node_3168 = 2.0;
                float3 node_2337 = lerp(lerp( node_9433, (_Emissive_var.rgb+node_9433), _EmissiveON ),_Fresnel_Color.rgb,floor((_T_noise_var.r*pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_Size)) * node_3168) / (node_3168 - 1));
                float3 emissive = node_2337;
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = emissive + ((node_2337*floor((lerp(_Shadow_Color.rgb,_Light_Color.rgb,saturate((saturate((_T_noise_var.r+node_7782))*node_7782)))+(pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb)) * node_3168) / (node_3168 - 1))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Gloss;
            uniform sampler2D _T_noise; uniform float4 _T_noise_ST;
            uniform float _Fresnel_Size;
            uniform float4 _Light_Color;
            uniform float4 _Shadow_Color;
            uniform float4 _Fresnel_Color;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Velocity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform fixed _EmissiveON;
            uniform fixed _NormalOFF;
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
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = (_Normal_var.rgb*_NormalOFF);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_9433 = (_Diffuse_var.rgb*_Color.rgb);
                float4 _Emissive_var = tex2D(_Emissive,TRANSFORM_TEX(i.uv0, _Emissive));
                float4 node_9810 = _Time + _TimeEditor;
                float3 node_8873 = (i.posWorld.rgb+(node_9810.g*_Velocity));
                float4 _T_noise_var = tex2D(_T_noise,TRANSFORM_TEX(node_8873, _T_noise));
                float node_3168 = 2.0;
                float3 node_2337 = lerp(lerp( node_9433, (_Emissive_var.rgb+node_9433), _EmissiveON ),_Fresnel_Color.rgb,floor((_T_noise_var.r*pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_Size)) * node_3168) / (node_3168 - 1));
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = ((node_2337*floor((lerp(_Shadow_Color.rgb,_Light_Color.rgb,saturate((saturate((_T_noise_var.r+node_7782))*node_7782)))+(pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb)) * node_3168) / (node_3168 - 1))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
