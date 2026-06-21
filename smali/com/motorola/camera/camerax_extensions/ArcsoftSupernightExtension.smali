.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;
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

.field public gainTotal:D

.field public inputFrameCount:I

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->mSensorName:Ljava/lang/String;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 64

    move-object/from16 v0, p0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v6, Lorg/json/JSONTokener;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const/4 v7, -0x1

    const-string/jumbo v8, "results"

    invoke-static {v8, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    sget-object v7, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v8, v2, :cond_2

    :cond_1
    move-object/from16 v17, v4

    goto/16 :goto_17

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lorg/json/JSONObject;

    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v6

    iput v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    iget v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v13, v12

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_3

    cmpg-double v13, v10, v15

    if-gez v13, :cond_4

    :cond_3
    move-object/from16 v17, v4

    goto/16 :goto_16

    :cond_4
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v10

    iget-object v11, v10, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget-object v10, v10, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    new-instance v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v12}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    new-instance v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v13}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-static {v9, v6, v10, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v0, "unable to retrieve exposure values"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v16, "filterConfig"

    move-object/from16 v17, v4

    if-eqz v15, :cond_37

    const-string/jumbo v4, "sn-special-chromatix"

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    invoke-static {v4, v15, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    const-string v15, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v9

    new-instance v2, Ljava/util/ArrayList;

    move/from16 p2, v4

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v4, :cond_36

    move-object/from16 v19, v14

    const-string v14, "input_frame_postprocess"

    invoke-static {v14, v4, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_35

    move-object/from16 v20, v5

    const-string v5, "max-exp-gain-cap"

    invoke-static {v5, v14, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_34

    move/from16 v21, v5

    const-string v5, "ISP-digital-gain-only"

    invoke-static {v5, v14, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_33

    const-string v15, "exp_suppress_ratio"

    invoke-static {v15, v14, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Double;

    move/from16 v23, v5

    move-object/from16 v22, v6

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_32

    move-object/from16 v24, v1

    const-string v1, "extreme_night_thres"

    invoke-static {v1, v14, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_31

    move-object/from16 v25, v3

    const-string v3, "max_iso_cap"

    invoke-static {v3, v1, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_30

    move-object/from16 v26, v4

    const-string v4, "frame-ev-step"

    invoke-static {v4, v3, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v4, :cond_2f

    move-object/from16 v27, v2

    const-string v2, "lux_exp_threshold_range"

    invoke-static {v2, v4, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v4, :cond_2e

    move-object/from16 v28, v9

    const-string v9, "lux_exp_threshold_value"

    invoke-static {v9, v4, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v9, :cond_2d

    move-object/from16 v29, v13

    const-string v13, "lux_exp_threshold_value_normal"

    invoke-static {v13, v9, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v30, v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v13, v10, :cond_6

    const-string v0, "lux_exp_threshold_range not match to lux_exp_threshold_value"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_6
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v10, :cond_2c

    const-string v13, "lux_iso_threshold_range"

    invoke-static {v13, v10, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v13, :cond_2b

    move-wide/from16 v31, v14

    const-string v14, "lux_iso_threshold_value"

    invoke-static {v14, v13, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v13

    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_2a

    const-string v15, "lux_iso_threshold_value_normal"

    invoke-static {v15, v14, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v14, v15, :cond_7

    const-string v0, "lux_iso_threshold_range not match to lux_iso_threshold_value"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_7
    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v14, v14

    move-wide/from16 v33, v14

    const/4 v14, 0x1

    invoke-static {v14, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpg-double v14, v33, v14

    const-string v15, "get(...)"

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    if-gtz v14, :cond_a

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    move-wide/from16 v35, v5

    float-to-double v5, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_8

    neg-int v5, v2

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_1

    :cond_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :goto_1
    if-gez v2, :cond_9

    neg-int v2, v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v37

    goto :goto_2

    :cond_9
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v37

    goto :goto_2

    :cond_a
    move-wide/from16 v35, v5

    move-wide/from16 v4, v33

    move-wide/from16 v37, v4

    :goto_2
    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    move-wide/from16 v39, v4

    float-to-double v4, v2

    const/4 v14, 0x1

    invoke-static {v14, v10}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v41

    cmpg-double v2, v4, v41

    if-gtz v2, :cond_d

    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v10, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_b

    neg-int v4, v2

    sub-int/2addr v4, v14

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_4

    :cond_b
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :goto_4
    if-gez v2, :cond_c

    neg-int v2, v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    goto :goto_5

    :cond_c
    const/16 v18, 0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    goto :goto_5

    :cond_d
    move/from16 v18, v14

    move-wide/from16 v4, v33

    move-wide v8, v4

    :goto_5
    float-to-double v13, v11

    mul-double v41, v13, v33

    move-wide/from16 v43, v4

    iget-wide v4, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    mul-double/2addr v4, v13

    iget-wide v13, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->log(D)D

    move-result-wide v45

    sub-double v13, v13, v45

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-wide/from16 v45, v4

    int-to-double v4, v2

    const-wide/high16 v47, 0x4000000000000000L    # 2.0

    div-double v4, v4, v47

    div-double/2addr v13, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->log(D)D

    move-result-wide v49

    sub-double v4, v4, v49

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-wide/from16 v49, v4

    int-to-double v4, v2

    div-double v4, v4, v47

    div-double v4, v49, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_23

    new-instance v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v10}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    move/from16 v48, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v49

    move-object/from16 v51, v3

    move-wide/from16 v2, v35

    move-wide/from16 v35, v4

    double-to-float v4, v2

    move-wide/from16 v52, v2

    move-wide/from16 v2, v31

    double-to-float v5, v2

    int-to-float v2, v1

    move-wide/from16 v54, v8

    iget-wide v8, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const/4 v3, 0x4

    if-ge v6, v3, :cond_e

    move/from16 v3, v18

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_f

    move-wide/from16 v56, v13

    goto :goto_8

    :cond_f
    move-wide/from16 v56, v35

    :goto_8
    if-eqz v3, :cond_10

    move-wide/from16 v58, v41

    goto :goto_9

    :cond_10
    move-wide/from16 v58, v45

    :goto_9
    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->log(D)D

    move-result-wide v58

    mul-double v56, v56, v49

    add-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->exp(D)D

    move-result-wide v49

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_12

    const/4 v3, 0x3

    if-le v6, v3, :cond_11

    iget-wide v4, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double v8, v4, v39

    mul-double v49, v49, v43

    :cond_11
    if-ne v6, v3, :cond_13

    iget-wide v3, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double v8, v3, v37

    mul-double v49, v45, v54

    goto :goto_a

    :cond_12
    const/4 v3, 0x3

    if-ge v6, v3, :cond_13

    iget-wide v8, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    float-to-double v3, v4

    div-double/2addr v8, v3

    :cond_13
    :goto_a
    const-wide v3, 0x41c1e1a300000000L    # 6.0E8

    cmpl-double v5, v8, v3

    if-lez v5, :cond_14

    move-wide v8, v3

    :cond_14
    move/from16 v3, v30

    float-to-double v4, v3

    mul-double v49, v49, v4

    mul-double v4, v8, v49

    move/from16 v30, v3

    move-wide/from16 v56, v4

    move-object/from16 v0, v29

    iget-wide v3, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-wide/from16 v58, v3

    iget-wide v3, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v3, v3, v58

    cmpl-double v5, v49, v3

    if-lez v5, :cond_15

    div-double v8, v56, v3

    move-wide/from16 v49, v3

    :cond_15
    sget-object v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move/from16 v29, v1

    move-object/from16 v1, v28

    if-eq v1, v5, :cond_19

    sget-object v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    if-ne v1, v5, :cond_16

    const-wide v58, 0x416312d000000000L    # 1.0E7

    goto :goto_b

    :cond_16
    const-wide v58, 0x415fca0555555555L    # 8333333.333333333

    :goto_b
    cmpl-double v5, v8, v58

    if-lez v5, :cond_19

    div-double v8, v8, v58

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double v8, v8, v58

    const-wide v49, 0x40b3880000000000L    # 5000.0

    sub-double v60, v8, v49

    cmpl-double v5, v60, v56

    if-lez v5, :cond_17

    sub-double v8, v8, v58

    goto :goto_c

    :cond_17
    add-double v49, v8, v49

    mul-double v49, v49, v3

    cmpg-double v5, v49, v56

    if-gez v5, :cond_18

    add-double v8, v8, v58

    :cond_18
    :goto_c
    div-double v49, v56, v8

    :cond_19
    move-wide/from16 v58, v3

    iget-wide v3, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v5, v49, v3

    if-lez v5, :cond_21

    if-eqz v21, :cond_1d

    move-wide/from16 v60, v3

    iget-wide v3, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v5, v8, v3

    if-lez v5, :cond_1b

    mul-double v49, v49, v8

    div-double v49, v49, v3

    float-to-double v8, v2

    cmpl-double v2, v49, v8

    if-lez v2, :cond_1a

    move-wide/from16 v49, v8

    :cond_1a
    div-double v49, v49, v60

    move-object/from16 v28, v1

    :goto_d
    move-wide v8, v3

    goto :goto_f

    :cond_1b
    move-object/from16 v28, v1

    float-to-double v1, v2

    cmpl-double v5, v49, v1

    if-lez v5, :cond_1c

    mul-double v8, v8, v49

    div-double/2addr v8, v1

    div-double v49, v1, v60

    cmpl-double v1, v8, v3

    if-lez v1, :cond_1f

    goto :goto_d

    :cond_1c
    :goto_e
    div-double v49, v49, v60

    goto :goto_f

    :cond_1d
    move-object/from16 v28, v1

    move-wide/from16 v60, v3

    cmpg-double v1, v49, v58

    if-gtz v1, :cond_1e

    goto :goto_e

    :cond_1e
    iget-wide v1, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v3, v60, v1

    div-double v8, v56, v3

    move-wide/from16 v49, v1

    :cond_1f
    :goto_f
    if-eqz v23, :cond_20

    mul-double v1, v60, v49

    move-wide/from16 v62, v49

    move-wide/from16 v49, v1

    move-wide/from16 v1, v62

    goto :goto_10

    :cond_20
    move-wide/from16 v1, v49

    move-wide/from16 v49, v60

    goto :goto_10

    :cond_21
    move-object/from16 v28, v1

    move-wide/from16 v1, v33

    :goto_10
    cmpg-double v3, v49, v33

    if-gez v3, :cond_22

    move-wide/from16 v3, v33

    goto :goto_11

    :cond_22
    move-wide/from16 v3, v49

    :goto_11
    iput-wide v3, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iput-wide v1, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    iput-wide v8, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-object/from16 v1, v27

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v29

    move-wide/from16 v4, v35

    move/from16 v2, v48

    move-object/from16 v3, v51

    move-wide/from16 v35, v52

    move-wide/from16 v8, v54

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_23
    move-object/from16 v1, v27

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "no EV compensation configured"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const-string v0, "dynamic exposure algo error"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_24
    const/4 v0, 0x0

    :goto_13
    const/4 v3, 0x3

    if-ge v0, v3, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_25
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v2, :cond_29

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "NOISE_REDUCTION_MODE"

    const-string v9, "EDGE_MODE"

    if-eqz v6, :cond_26

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v24

    invoke-static {v3, v6, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    const/16 v16, 0x4

    const/16 v47, 0x3

    goto :goto_15

    :cond_26
    move-object/from16 v10, v24

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v47, 0x3

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :goto_15
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "CONTROL_AWB_LOCK"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    move-object/from16 v6, v22

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz v19, :cond_27

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v7, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_27
    if-eqz p2, :cond_28

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_MODE"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_SCENE_MODE"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x66

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v7, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_28
    sget-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "ISMOTCAMERA_KEY"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v10

    goto/16 :goto_14

    :cond_29
    const-string/jumbo v1, "requests"

    move-object/from16 v2, v20

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_2b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_2c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_2d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_2e
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_2f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_30
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_31
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_32
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_33
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_34
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_35
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_36
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :cond_37
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v17

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lux ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") or gain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ") calculation failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :goto_17
    const-string v0, "Unable to parse input result"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string p1, "configureStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Landroidx/collection/internal/Lock;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/collection/internal/Lock;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

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
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

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

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "previewResultCount"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "captureRequestCount"

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

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
    sget-object p0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "CONTROL_AE_MODE"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "CONTROL_AWB_MODE"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "ISMOTCAMERA_KEY"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "CONTROL_AF_MODE"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, p0, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo p0, "requests"

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "previewCaptureRequests"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

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

    invoke-static {p0, v0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_SENSITIVITY"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "STATISTICS_SCENE_FLICKER"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "ISO100_GAIN_KEY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "LUX_STD_KEY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "LUX_IDX_KEY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "MOT_ADRC_GAIN_KEY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "LENS_APERTURE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string/jumbo v0, "previewResultsOfInterest"

    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string p1, "as-supernight"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final isSupported()Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lake"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    const-string v3, "AR-supernight"

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_7

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v6, "enable"

    invoke-static {v6, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_6

    const-string v7, "extension-enable"

    invoke-static {v7, v6, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "state-machine"

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "super-night"

    invoke-static {v4, v3, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    iput-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v3, "frames-required"

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "Unable to determine input frames"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "SM config missing for algo"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v0

    :cond_6
    const-string p0, "algoConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    const-string p0, "Config missing for algo"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final processStream(ILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string/jumbo p0, "processStream client id is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

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

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    if-eq p2, v3, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not matching requested count "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "luxAvg"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "totalGain"

    iget-wide v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const-string v4, "algoConfig"

    if-eqz v2, :cond_b

    const-string v5, "brightness"

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "curveBrightness"

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    const-string v5, "contrast"

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "curveContrast"

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    const-string/jumbo v5, "sharpness"

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    const-string v5, "deviceID"

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    const-string v4, "lib-name"

    invoke-static {v4, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "libName"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    const-string v2, "cameraID"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v2, "filterConfig"

    if-eqz v1, :cond_6

    const-string v4, "frame-ev-default"

    invoke-static {v4, v1, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "frameEv"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    const-string/jumbo v2, "ram_memory_size"

    invoke-static {v2, v1, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "memorySize"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "toString(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {v2, v3, p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
