// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:36063,y:31506,varname:node_4013,prsc:2|diff-4167-RGB,spec-6244-OUT,gloss-337-OUT,normal-6058-RGB,emission-3437-RGB,disp-7246-OUT,tess-1956-OUT;n:type:ShaderForge.SFN_Slider,id:1956,x:35505,y:32406,ptovrint:False,ptlb:Tessellation,ptin:_Tessellation,varname:node_1956,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:15.53173,max:60;n:type:ShaderForge.SFN_Time,id:9716,x:33705,y:30673,varname:node_9716,prsc:2;n:type:ShaderForge.SFN_Slider,id:7015,x:33117,y:31282,ptovrint:False,ptlb:Speed_Wave_Rotation,ptin:_Speed_Wave_Rotation,varname:node_7015,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5306073,max:1;n:type:ShaderForge.SFN_Multiply,id:5375,x:34110,y:31285,varname:node_5375,prsc:2|A-9716-T,B-822-OUT,C-8949-OUT;n:type:ShaderForge.SFN_TexCoord,id:8276,x:33705,y:30458,varname:node_8276,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:2169,x:34479,y:31279,varname:node_2169,prsc:2|A-5375-OUT,B-8276-UVOUT;n:type:ShaderForge.SFN_Vector2,id:8949,x:33688,y:31408,varname:node_8949,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Multiply,id:6667,x:35038,y:32329,varname:node_6667,prsc:2|A-6471-RGB,B-1737-OUT;n:type:ShaderForge.SFN_Multiply,id:7246,x:35662,y:32221,varname:node_7246,prsc:2|A-6667-OUT,B-1728-OUT;n:type:ShaderForge.SFN_NormalVector,id:1728,x:35304,y:32291,prsc:2,pt:True;n:type:ShaderForge.SFN_Slider,id:1737,x:34590,y:32371,ptovrint:False,ptlb:Wave_Intensity,ptin:_Wave_Intensity,varname:node_1737,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01775527,max:1;n:type:ShaderForge.SFN_Tex2d,id:6058,x:35014,y:31407,ptovrint:False,ptlb:Normal_Map,ptin:_Normal_Map,varname:node_6058,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf3c1c67c762d124b8f8a24b0f05f715,ntxv:3,isnm:True|UVIN-2169-OUT;n:type:ShaderForge.SFN_Add,id:4819,x:34483,y:31667,varname:node_4819,prsc:2|A-8276-UVOUT,B-3734-OUT;n:type:ShaderForge.SFN_Multiply,id:3734,x:34115,y:31678,varname:node_3734,prsc:2|A-9716-T,B-7009-OUT,C-1455-OUT;n:type:ShaderForge.SFN_Vector2,id:1455,x:33685,y:31845,varname:node_1455,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Tex2d,id:5357,x:34976,y:31688,ptovrint:False,ptlb:node_7118,ptin:_node_7118,varname:node_5357,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4819-OUT;n:type:ShaderForge.SFN_Slider,id:5469,x:33128,y:31717,ptovrint:False,ptlb:Speed_Wave_Deformation,ptin:_Speed_Wave_Deformation,varname:node_5469,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2227606,max:1;n:type:ShaderForge.SFN_Multiply,id:9855,x:33483,y:31341,varname:node_9855,prsc:2|A-7015-OUT,B-7380-OUT;n:type:ShaderForge.SFN_Vector1,id:7380,x:33274,y:31358,varname:node_7380,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:822,x:33688,y:31279,ptovrint:False,ptlb:Invert_Speed_Wave_Rotation,ptin:_Invert_Speed_Wave_Rotation,varname:node_822,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7015-OUT,B-9855-OUT;n:type:ShaderForge.SFN_Multiply,id:9405,x:33484,y:31799,varname:node_9405,prsc:2|A-5469-OUT,B-9094-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7009,x:33685,y:31708,ptovrint:False,ptlb:Invert_Speed_Wave_Deformation,ptin:_Invert_Speed_Wave_Deformation,varname:node_7009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5469-OUT,B-9405-OUT;n:type:ShaderForge.SFN_Tex2d,id:9450,x:34994,y:30959,ptovrint:False,ptlb:T_Oil,ptin:_T_Oil,varname:node_9450,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-493-OUT;n:type:ShaderForge.SFN_Slider,id:1137,x:33134,y:30930,ptovrint:False,ptlb:Speed_Oil,ptin:_Speed_Oil,varname:node_1137,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1917839,max:1;n:type:ShaderForge.SFN_Multiply,id:6915,x:34119,y:30940,varname:node_6915,prsc:2|A-9716-T,B-101-OUT,C-8949-OUT;n:type:ShaderForge.SFN_Add,id:493,x:34484,y:30944,varname:node_493,prsc:2|A-6915-OUT,B-8276-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:101,x:33691,y:30909,ptovrint:False,ptlb:Invert_Speed_Oil,ptin:_Invert_Speed_Oil,varname:node_101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1137-OUT,B-4422-OUT;n:type:ShaderForge.SFN_Multiply,id:4422,x:33484,y:30977,varname:node_4422,prsc:2|A-1137-OUT,B-1237-OUT;n:type:ShaderForge.SFN_Vector1,id:1237,x:33262,y:31021,varname:node_1237,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:9094,x:33285,y:31816,varname:node_9094,prsc:2,v1:-1;n:type:ShaderForge.SFN_Tex2d,id:5972,x:35014,y:31185,ptovrint:False,ptlb:T_jsp,ptin:_T_jsp,varname:node_5972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2169-OUT;n:type:ShaderForge.SFN_Tex2d,id:6471,x:34367,y:32164,ptovrint:False,ptlb:T_Displacement,ptin:_T_Displacement,varname:node_6471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4819-OUT;n:type:ShaderForge.SFN_Color,id:4167,x:35510,y:31325,ptovrint:False,ptlb:node_4167,ptin:_node_4167,varname:node_4167,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:6244,x:35429,y:31622,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_6244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:337,x:35429,y:31734,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_337,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:3437,x:35685,y:31879,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_3437,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:6058-7015-822-5469-7009-1137-101-1737-1956-6471-5357-9450-5972-4167-6244-337-3437;pass:END;sub:END;*/

Shader "Shader Forge/SH_Bouillon" {
    Properties {
        _Normal_Map ("Normal_Map", 2D) = "bump" {}
        _Speed_Wave_Rotation ("Speed_Wave_Rotation", Range(0, 1)) = 0.5306073
        [MaterialToggle] _Invert_Speed_Wave_Rotation ("Invert_Speed_Wave_Rotation", Float ) = 0.5306073
        _Speed_Wave_Deformation ("Speed_Wave_Deformation", Range(0, 1)) = 0.2227606
        [MaterialToggle] _Invert_Speed_Wave_Deformation ("Invert_Speed_Wave_Deformation", Float ) = 0.2227606
        _Speed_Oil ("Speed_Oil", Range(0, 1)) = 0.1917839
        [MaterialToggle] _Invert_Speed_Oil ("Invert_Speed_Oil", Float ) = 0.1917839
        _Wave_Intensity ("Wave_Intensity", Range(0.01, 1)) = 0.01775527
        _Tessellation ("Tessellation", Range(1, 60)) = 15.53173
        _T_Displacement ("T_Displacement", 2D) = "white" {}
        _node_7118 ("node_7118", 2D) = "white" {}
        _T_Oil ("T_Oil", 2D) = "white" {}
        _T_jsp ("T_jsp", 2D) = "white" {}
        _node_4167 ("node_4167", Color) = (0.5,0.5,0.5,1)
        _Specular ("Specular", Range(0, 1)) = 0
        _Roughness ("Roughness", Range(0, 1)) = 0
        _Emission ("Emission", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Tessellation;
            uniform float _Speed_Wave_Rotation;
            uniform float _Wave_Intensity;
            uniform sampler2D _Normal_Map; uniform float4 _Normal_Map_ST;
            uniform float _Speed_Wave_Deformation;
            uniform fixed _Invert_Speed_Wave_Rotation;
            uniform fixed _Invert_Speed_Wave_Deformation;
            uniform sampler2D _T_Displacement; uniform float4 _T_Displacement_ST;
            uniform float4 _node_4167;
            uniform float _Specular;
            uniform float _Roughness;
            uniform float4 _Emission;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
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
                    float2 node_4819 = (v.texcoord0+(node_9716.g*lerp( _Speed_Wave_Deformation, (_Speed_Wave_Deformation*(-1.0)), _Invert_Speed_Wave_Deformation )*float2(1,0)));
                    float4 _T_Displacement_var = tex2Dlod(_T_Displacement,float4(TRANSFORM_TEX(node_4819, _T_Displacement),0.0,0));
                    v.vertex.xyz += ((_T_Displacement_var.rgb*_Wave_Intensity)*v.normal);
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
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9716 = _Time + _TimeEditor;
                float2 node_8949 = float2(0,1);
                float2 node_2169 = ((node_9716.g*lerp( _Speed_Wave_Rotation, (_Speed_Wave_Rotation*(-1.0)), _Invert_Speed_Wave_Rotation )*node_8949)+i.uv0);
                float3 _Normal_Map_var = UnpackNormal(tex2D(_Normal_Map,TRANSFORM_TEX(node_2169, _Normal_Map)));
                float3 normalLocal = _Normal_Map_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome;
                float3 diffuseColor = _node_4167.rgb; // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
/////// Diffuse:
                diffuseColor *= 1-specularMonochrome;
////// Emissive:
                float3 emissive = _Emission.rgb;
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( _Emission.rgb, 1 );
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Tessellation;
            uniform float _Speed_Wave_Rotation;
            uniform float _Wave_Intensity;
            uniform sampler2D _Normal_Map; uniform float4 _Normal_Map_ST;
            uniform float _Speed_Wave_Deformation;
            uniform fixed _Invert_Speed_Wave_Rotation;
            uniform fixed _Invert_Speed_Wave_Deformation;
            uniform sampler2D _T_Displacement; uniform float4 _T_Displacement_ST;
            uniform float4 _node_4167;
            uniform float _Specular;
            uniform float _Roughness;
            uniform float4 _Emission;
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
                    float2 node_4819 = (v.texcoord0+(node_9716.g*lerp( _Speed_Wave_Deformation, (_Speed_Wave_Deformation*(-1.0)), _Invert_Speed_Wave_Deformation )*float2(1,0)));
                    float4 _T_Displacement_var = tex2Dlod(_T_Displacement,float4(TRANSFORM_TEX(node_4819, _T_Displacement),0.0,0));
                    v.vertex.xyz += ((_T_Displacement_var.rgb*_Wave_Intensity)*v.normal);
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
                float2 node_8949 = float2(0,1);
                float2 node_2169 = ((node_9716.g*lerp( _Speed_Wave_Rotation, (_Speed_Wave_Rotation*(-1.0)), _Invert_Speed_Wave_Rotation )*node_8949)+i.uv0);
                float3 _Normal_Map_var = UnpackNormal(tex2D(_Normal_Map,TRANSFORM_TEX(node_2169, _Normal_Map)));
                float3 normalLocal = _Normal_Map_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome;
                float3 diffuseColor = _node_4167.rgb; // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = _Emission.rgb;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Tessellation;
            uniform float _Wave_Intensity;
            uniform float _Speed_Wave_Deformation;
            uniform fixed _Invert_Speed_Wave_Deformation;
            uniform sampler2D _T_Displacement; uniform float4 _T_Displacement_ST;
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
                    float2 node_4819 = (v.texcoord0+(node_9716.g*lerp( _Speed_Wave_Deformation, (_Speed_Wave_Deformation*(-1.0)), _Invert_Speed_Wave_Deformation )*float2(1,0)));
                    float4 _T_Displacement_var = tex2Dlod(_T_Displacement,float4(TRANSFORM_TEX(node_4819, _T_Displacement),0.0,0));
                    v.vertex.xyz += ((_T_Displacement_var.rgb*_Wave_Intensity)*v.normal);
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
