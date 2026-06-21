.class public final Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public filterConfig:Lorg/json/JSONObject;

.field public inputFrameCount:I

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public final mSensorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->mSensorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object/from16 v16, v2

    goto/16 :goto_3

    :cond_0
    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string/jumbo v5, "results"

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v0, "Unable to parse input result"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v7, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v8

    iget-object v9, v8, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    iget-object v8, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    new-instance v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v11}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    new-instance v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v12}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-static {v4, v7, v8, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v0, "unable to retrieve exposure values"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getLux(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v13, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v14, "filterConfig"

    if-eqz v13, :cond_e

    const-string v15, "frame-ev-on-lux"

    move-object/from16 v16, v2

    iget v2, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    invoke-static {v15, v13, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONArray;

    if-nez v13, :cond_3

    const-string v0, "EV Lux table not found in config"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    move-object/from16 p2, v4

    :goto_0
    if-ge v6, v15, :cond_8

    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move/from16 v18, v6

    const-string v6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/json/JSONObject;

    const-string v6, "lux"

    move-object/from16 v19, v11

    const/4 v11, -0x1

    invoke-static {v6, v4, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object v6, v12

    float-to-double v11, v8

    cmpl-double v11, v11, v20

    if-gez v11, :cond_5

    add-int/lit8 v11, v18, 0x1

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v11, v12, :cond_4

    goto :goto_1

    :cond_4
    move-object v12, v6

    move v6, v11

    move-object/from16 v11, v19

    goto :goto_0

    :cond_5
    :goto_1
    const-string v8, "ev"

    const/4 v11, -0x1

    invoke-static {v8, v4, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    sget-object v8, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_9

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object v16

    :cond_8
    move-object/from16 v19, v11

    move-object v6, v12

    :cond_9
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    const-string v4, "exp-curve-anchors"

    invoke-static {v4, v0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "gains"

    const/4 v11, -0x1

    invoke-static {v2, v0, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "exposures"

    invoke-static {v4, v0, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v4, v8, :cond_a

    const-string v0, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_4
    const-string v11, "get(...)"

    if-ge v8, v5, :cond_b

    new-instance v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Number;

    move/from16 p0, v5

    move-object/from16 v17, v6

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-direct {v12, v13, v14, v5, v6}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p0

    move-object/from16 v6, v17

    goto :goto_4

    :cond_b
    move-object/from16 v17, v6

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v15

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_c

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v16, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct/range {v16 .. v16}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    move-object v8, v10

    move-object v10, v4

    move-object v4, v8

    move-object v8, v11

    move-object/from16 v12, v17

    move-object/from16 v11, v19

    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->calcExposureAtEv(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V

    move-object/from16 v11, v16

    invoke-static {v5, v11, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    sget-object v11, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v12, "EDGE_MODE"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v12, "NOISE_REDUCTION_MODE"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v12, "CONTROL_AWB_LOCK"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v11, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    move-object v11, v10

    move-object v10, v4

    move-object v4, v11

    move-object v11, v8

    goto :goto_5

    :cond_c
    const-string/jumbo v1, "requests"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_e
    move-object/from16 v16, v2

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Landroidx/collection/internal/Lock;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/collection/internal/Lock;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    const/4 v3, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/google/mlkit/common/internal/zzc;->configureCaptureStreamNative$default(JLandroid/graphics/Point;ILandroid/view/Surface;IZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final deinitialize(I)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "previewResultCount"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "captureRequestCount"

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    sget-object v8, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v7, v8, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_0
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo p0, "requests"

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "previewCaptureRequests"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object v5, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "SENSOR_EXPOSURE_TIME"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "SENSOR_FRAME_DURATION"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_SENSITIVITY"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "STATISTICS_SCENE_FLICKER"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "ISO100_GAIN_KEY"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "LUX_STD_KEY"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "LUX_IDX_KEY"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string/jumbo v0, "previewResultsOfInterest"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initialize(I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string p1, "morpho-hdr"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final isSupported()Z
    .locals 7

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "VNR0-hdr"

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v6, "enable"

    invoke-static {v6, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v3, "state-machine"

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "hdr"

    invoke-static {v4, v3, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v4, "frame-ev-on-lux"

    invoke-static {v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "ev"

    invoke-static {v6, v5, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    :cond_4
    iput v0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string p0, "SM config missing for algo"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const-string p0, "Config missing for algo"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final processStream(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    sget-object v1, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string p0, "client id is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 p2, -0x1

    const-string/jumbo v3, "results"

    invoke-static {v3, p1, p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_2

    const-string p0, "Unable to parse input results"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    if-eq p2, v3, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iget p0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Input count("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not matching requested count "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v3, "algoConfig"

    if-eqz p2, :cond_b

    const-string v4, "ghostSenLel"

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jsonIndex:I

    invoke-static {v4, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    const-string v4, "ghost_det_sen_level"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_a

    const-string v4, "ghostRate_threadhold"

    invoke-static {v4, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    const-string v4, "ghost_rate_thres"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_9

    const-string v4, "contract_level"

    invoke-static {v4, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    const-string v4, "contrast_level"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "dr_check_params"

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_8

    const-string/jumbo v2, "saturation_level"

    invoke-static {v2, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_7

    const-string v2, "ghost_rem_strength_level"

    invoke-static {v2, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_6

    const-string/jumbo v2, "rel_rect_rate_thres"

    invoke-static {v2, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_5

    const-string/jumbo v2, "shrink_ratio"

    invoke-static {v2, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz p2, :cond_4

    const-string v1, "frame_dump"

    invoke-static {v1, p2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "frameDump"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "in-params"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->jniClientId:J

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/camerax_extensions/MorphoHdrExtension;->inputFrameCount:I

    invoke-static {v1, v2, p1, v0, p0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
