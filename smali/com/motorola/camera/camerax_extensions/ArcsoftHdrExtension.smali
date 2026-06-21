.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final captureSize:Landroid/graphics/Point;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public currentInputFrameCount:I

.field public filterConfig:Lorg/json/JSONObject;

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;

.field public maxInputFrameCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->mSensorName:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->captureSize:Landroid/graphics/Point;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

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

    const/4 v6, -0x1

    invoke-static {v5, v4, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_2

    :cond_1
    move-object/from16 v20, v2

    goto/16 :goto_a

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lorg/json/JSONObject;

    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v11

    iget-object v12, v11, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iget-object v11, v11, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    new-instance v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    new-instance v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v15}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-static {v8, v10, v11, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v0, "unable to retrieve exposure values"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v4

    iput v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->luxAverage:F

    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    const-wide v16, 0x3f3a36e2eb1c432dL    # 4.0E-4

    const-wide/16 v18, 0x0

    const-string v13, "filterConfig"

    move-object/from16 v20, v2

    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    if-ltz v11, :cond_b

    move-object/from16 p2, v8

    float-to-double v7, v4

    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v4, :cond_a

    const-string v11, "frame-ev-on-lux"

    invoke-static {v11, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    if-nez v4, :cond_5

    const-string v4, "EV Lux table not found in config"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    move-object/from16 v11, v20

    goto/16 :goto_7

    :cond_5
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-wide/from16 v21, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_f

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lorg/json/JSONObject;

    move-object/from16 v23, v4

    const-string v4, "lux"

    move/from16 v24, v6

    const/4 v6, -0x1

    invoke-static {v4, v8, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    cmpl-double v4, v21, v25

    if-gez v4, :cond_7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v7, v4, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v4, v23

    move/from16 v6, v24

    goto :goto_1

    :cond_7
    :goto_2
    const-string v4, "ev"

    const/4 v6, -0x1

    invoke-static {v4, v8, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    sget-object v6, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    iput v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_f

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    sub-double v21, v8, v18

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    cmpg-double v21, v21, v16

    if-gez v21, :cond_9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v20

    :cond_b
    move-object/from16 p2, v8

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_15

    const-string v7, "frame-ev-default"

    invoke-static {v7, v6, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    if-nez v6, :cond_c

    const-string v4, "default EV Lux table not found in config"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_e

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v21

    sub-double v23, v21, v18

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    cmpg-double v9, v23, v16

    if-gez v9, :cond_d

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    iput v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    move-object v11, v4

    :cond_f
    :goto_7
    if-nez v11, :cond_10

    const-string v0, "could not calculate exposure values"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :cond_10
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v0, :cond_14

    const-string v4, "exp-curve-anchors"

    invoke-static {v4, v0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "gains"

    const/4 v6, -0x1

    invoke-static {v2, v0, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "exposures"

    invoke-static {v4, v0, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_11

    const-string v0, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :cond_11
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    const-string v6, "get(...)"

    if-ge v5, v4, :cond_12

    new-instance v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move-object/from16 p0, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v2, p0

    move/from16 v4, v16

    goto :goto_8

    :cond_12
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, [I

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v18

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v4, :cond_13

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v19, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct/range {v19 .. v19}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v13 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->calcExposureAtEv(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V

    move-object/from16 v8, v19

    invoke-static {v5, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    sget-object v8, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "EDGE_MODE"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "NOISE_REDUCTION_MODE"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_AWB_LOCK"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v8, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_13
    const-string/jumbo v0, "requests"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v20

    :cond_15
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v20

    :goto_a
    const-string v0, "Unable to parse input result"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Landroidx/collection/internal/Lock;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/collection/internal/Lock;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v5

    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v6, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->captureSize:Landroid/graphics/Point;

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->maxInputFrameCount:I

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/google/mlkit/common/internal/zzc;->configureCaptureStreamNative$default(JLandroid/graphics/Point;ILandroid/view/Surface;IZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final deinitialize(I)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "previewResultCount"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "captureRequestCount"

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->maxInputFrameCount:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [I

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v5, v6, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo p0, "requests"

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "previewCaptureRequests"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "SENSOR_EXPOSURE_TIME"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "SENSOR_FRAME_DURATION"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "SENSOR_SENSITIVITY"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v7, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "STATISTICS_SCENE_FLICKER"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v7, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p0, v7, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v7, "ISO100_GAIN_KEY"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p0, v1, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v8, "LUX_STD_KEY"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "LUX_IDX_KEY"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v8, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "MOT_ADRC_GAIN_KEY"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v9, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string/jumbo v9, "previewResultsOfInterest"

    invoke-virtual {v0, v9, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "STATISTICS_FACES"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Face["

    invoke-static {p0, v9, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "SCALER_CROP_REGION"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Rect"

    invoke-static {p0, v9, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {p0, v6, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {p0, v5, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "CONTROL_AE_EXPOSURE_COMPENSATION"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {p0, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {p0, v1, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {p0, v8, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v1, "captureResultsOfInterest"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string p1, "as-hdr"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

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

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "arcsoft-hdr"

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

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

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->filterConfig:Lorg/json/JSONObject;

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
    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->maxInputFrameCount:I

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
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-wide v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    sget-object v5, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->TAG:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v0, "client id is invalid"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v6, p2

    invoke-direct {v4, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string/jumbo v6, "results"

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    if-nez v4, :cond_2

    const-string v0, "Unable to parse input results"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    if-eq v6, v8, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->currentInputFrameCount:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Input count("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not matching requested count "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v9, "algoConfig"

    const/4 v10, 0x0

    if-eqz v8, :cond_1c

    const-string v11, "enable"

    iget v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jsonIndex:I

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_1b

    const-string v11, "camera-type"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_1a

    const-string v11, "deviceId"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_19

    const-string/jumbo v11, "tone-length"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_18

    const-string v11, "brightness"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_17

    const-string/jumbo v11, "saturation"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_16

    const-string v11, "contrast"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_15

    const-string v11, "llhdr-special-sequence"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "llhdrSpecialSequence"

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_14

    const-string v11, "mfnrev0-4-evplus-thres"

    invoke-static {v11, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    :cond_4
    const-string v11, "luxThres"

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_13

    const-string v9, "mfnrev0-4-evplus-flag"

    invoke-static {v9, v8, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v2

    :cond_5
    const-string v9, "mfnrev0forevplus-flag"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->luxAverage:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v9, "luxAvg"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/util/Rational;->getDenominator()I

    move-result v10

    invoke-virtual {v8}, Landroid/util/Rational;->getNumerator()I

    move-result v8

    div-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_6
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v10, "evStep"

    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v8, v10, v11, v1}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v8

    const-string v10, "orientation"

    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    move v14, v1

    :goto_0
    if-ge v14, v13, :cond_12

    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    sget-object v16, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "getName(...)"

    invoke-static {v3, v1, v15, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "No exp found"

    if-nez v3, :cond_7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object/from16 v17, v3

    goto :goto_1

    :cond_7
    move-object/from16 v17, v2

    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 p2, v4

    const/4 v4, -0x1

    invoke-static {v2, v1, v15, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v17

    :cond_8
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v7, v1, v15, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const/16 v4, 0x64

    if-nez v7, :cond_9

    const-string v7, "No iso found"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_9
    move/from16 v18, v4

    if-nez v14, :cond_a

    const-string v4, "ISO"

    move-object/from16 v19, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_a
    move-object/from16 v19, v5

    :goto_2
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v5, -0x1

    invoke-static {v4, v1, v15, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v1, v15, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_c

    const-string v4, ""

    :cond_c
    invoke-static {v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Landroid/graphics/Rect;

    sget-object v18, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v20, v7

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v9

    const/4 v9, -0x1

    invoke-static {v7, v15, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    if-nez v7, :cond_e

    :cond_d
    move/from16 v21, v13

    goto :goto_5

    :cond_e
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_d

    move/from16 v21, v13

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v22, v7

    instance-of v7, v13, Lorg/json/JSONObject;

    if-eqz v7, :cond_f

    check-cast v13, Lorg/json/JSONObject;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    sget-object v7, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v21

    move-object/from16 v7, v22

    goto :goto_3

    :goto_5
    new-instance v7, Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->captureSize:Landroid/graphics/Point;

    iget v13, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    const/4 v15, 0x0

    invoke-direct {v7, v15, v15, v13, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v5, v4, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v1

    array-length v4, v1

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    array-length v4, v1

    move v5, v15

    :goto_6
    if-ge v5, v4, :cond_11

    aget-object v7, v1, v5

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "left"

    iget v15, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v13, "top"

    iget v15, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v13, v7, Landroid/graphics/Rect;->right:I

    iget v15, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    const-string/jumbo v15, "width"

    invoke-virtual {v9, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v13, v7, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v7

    const-string v7, "height"

    invoke-virtual {v9, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x0

    goto :goto_6

    :cond_11
    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p2

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move/from16 v13, v21

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, -0x1

    goto/16 :goto_0

    :cond_12
    move-object/from16 p2, v4

    const-string v1, "bracketIso"

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bracketExp"

    invoke-virtual {v6, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "frameEv"

    invoke-virtual {v6, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "faces"

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result v0

    return v0

    :cond_13
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_14
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_15
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_16
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_17
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_18
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_19
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_1a
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_1b
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10

    :cond_1c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v10
.end method
