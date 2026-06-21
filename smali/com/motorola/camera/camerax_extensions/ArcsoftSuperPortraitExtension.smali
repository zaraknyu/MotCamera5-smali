.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public evSteps:Ljava/util/ArrayList;

.field public filterConfig:Lorg/json/JSONObject;

.field public gainTotal:D

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;

.field public maxInputFrameCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->mSensorName:Ljava/lang/String;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 39

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

    const-string/jumbo v7, "results"

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    sget-object v7, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v9, v2, :cond_2

    :cond_1
    move-object/from16 v19, v4

    goto/16 :goto_15

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lorg/json/JSONObject;

    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v6

    iput v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_2a

    cmpg-double v14, v11, v16

    if-gez v14, :cond_3

    goto/16 :goto_14

    :cond_3
    invoke-static {v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v11

    iget-object v12, v11, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iget-object v11, v11, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    new-instance v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v13}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    new-instance v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v14}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-static {v10, v6, v11, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v0, "unable to retrieve exposure values"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v18, "filterConfig"

    if-eqz v15, :cond_29

    const-string/jumbo v2, "sp-special-chromatix"

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    invoke-static {v2, v15, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v15, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-result-object v10

    new-instance v9, Ljava/util/ArrayList;

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_28

    move/from16 v20, v2

    const-string v2, "input_frame_postprocess"

    invoke-static {v2, v8, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v8, :cond_27

    move-object/from16 v21, v11

    const-string/jumbo v11, "params-dynamic"

    move-object/from16 v22, v5

    const/4 v5, -0x1

    invoke-static {v11, v8, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-eqz v8, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_0
    check-cast v8, Lorg/json/JSONArray;

    if-nez v8, :cond_6

    const-string v0, "dynamic params not found"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_6
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object/from16 v26, v1

    move-object/from16 v23, v6

    move-wide/from16 v24, v16

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    const-string v1, "frame-ev-step"

    if-ge v11, v5, :cond_a

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v5

    move-object/from16 v5, v27

    check-cast v5, Lorg/json/JSONObject;

    move/from16 v27, v11

    const-string v11, "lux-in"

    invoke-static {v11, v5, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    move-object/from16 v29, v11

    const-string v11, "lux-out"

    invoke-static {v11, v5, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    if-eqz v29, :cond_7

    if-eqz v11, :cond_7

    move-object/from16 v30, v11

    iget v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    move-object/from16 v32, v2

    move-object/from16 v31, v3

    float-to-double v2, v11

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v33

    cmpg-double v2, v2, v33

    if-gez v2, :cond_8

    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    float-to-double v2, v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v33

    cmpl-double v2, v2, v33

    if-ltz v2, :cond_8

    invoke-static {v1, v5, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_2

    :cond_7
    move-object/from16 v32, v2

    move-object/from16 v31, v3

    :cond_8
    if-eqz v29, :cond_9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, v24

    if-lez v1, :cond_9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move/from16 v6, v27

    :cond_9
    add-int/lit8 v11, v27, 0x1

    move/from16 v5, v28

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    goto :goto_1

    :cond_a
    move-object/from16 v32, v2

    move-object/from16 v31, v3

    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    :cond_b
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_26

    const-string v2, "ISP-digital-gain-only"

    invoke-static {v2, v1, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_25

    const-string v3, "exp-curve-anchors"

    invoke-static {v3, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "gains"

    const/4 v5, -0x1

    invoke-static {v3, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "exposures"

    invoke-static {v4, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_c

    const-string v0, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    const-string v8, "get(...)"

    if-ge v6, v5, :cond_d

    new-instance v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Number;

    move-object/from16 v24, v9

    move-object/from16 p2, v10

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Number;

    move/from16 v25, v1

    move-object/from16 v18, v2

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v11, v9, v10, v1, v2}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p2

    move-object/from16 v2, v18

    move-object/from16 v9, v24

    move/from16 v1, v25

    goto :goto_3

    :cond_d
    move/from16 v25, v1

    move-object/from16 v24, v9

    move-object/from16 p2, v10

    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_1f

    new-instance v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v2}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    move-object v3, v0

    move/from16 p0, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v9, v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-wide/from16 v27, v0

    iget-wide v0, v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v9, v0

    iget-wide v0, v13, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v9, v0

    mul-double v9, v9, v27

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    cmpg-double v1, v9, v16

    if-gtz v1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move v11, v5

    iget-wide v5, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-object/from16 p1, v2

    iget-wide v1, v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move/from16 v30, v0

    move-object v15, v3

    goto/16 :goto_8

    :cond_e
    move-object/from16 p1, v2

    move v11, v5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v5, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-object v15, v3

    iget-wide v2, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-wide/from16 v27, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_5
    if-nez v5, :cond_11

    if-ge v6, v0, :cond_11

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move/from16 v30, v0

    move-object/from16 v0, v29

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v33, v2

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v35, v2

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double v2, v2, v35

    cmpg-double v0, v9, v2

    if-gtz v0, :cond_10

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v27, v2

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    sub-double v2, v27, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v27, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v0, v2, v27

    if-gez v0, :cond_f

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v27, v9, v2

    move-wide/from16 v37, v27

    move-wide/from16 v27, v2

    move-wide/from16 v2, v37

    goto :goto_6

    :cond_f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    div-double v27, v9, v2

    :goto_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    move-wide/from16 v2, v33

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v30

    goto :goto_5

    :cond_11
    move/from16 v30, v0

    move-wide/from16 v33, v2

    if-nez v5, :cond_12

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v5, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v1, v9, v5

    goto :goto_8

    :cond_12
    move-wide/from16 v5, v27

    move-wide/from16 v1, v33

    :goto_8
    add-int/lit8 v0, v30, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v27, v1

    iget-wide v1, v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-wide/from16 v29, v1

    iget-wide v1, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-wide/from16 v33, v1

    iget-wide v1, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v1, v1, v33

    cmpl-double v3, v29, v1

    if-lez v3, :cond_13

    move-wide/from16 v29, v1

    :cond_13
    cmpl-double v3, v5, v1

    if-lez v3, :cond_14

    div-double v5, v9, v1

    move-wide/from16 v27, v1

    goto :goto_9

    :cond_14
    move-wide/from16 v37, v27

    move-wide/from16 v27, v5

    move-wide/from16 v5, v37

    :goto_9
    sget-object v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    move-wide/from16 v33, v1

    move-object/from16 v1, p2

    if-eq v1, v3, :cond_18

    sget-object v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    if-ne v1, v2, :cond_15

    const-wide v2, 0x416312d000000000L    # 1.0E7

    goto :goto_a

    :cond_15
    const-wide v2, 0x415fca0555555555L    # 8333333.333333333

    :goto_a
    cmpl-double v35, v5, v2

    if-lez v35, :cond_18

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v2

    const-wide v27, 0x40b3880000000000L    # 5000.0

    sub-double v35, v5, v27

    cmpl-double v35, v35, v9

    if-lez v35, :cond_16

    sub-double/2addr v5, v2

    goto :goto_b

    :cond_16
    add-double v27, v5, v27

    mul-double v27, v27, v29

    cmpg-double v27, v27, v9

    if-gez v27, :cond_17

    add-double/2addr v5, v2

    :cond_17
    :goto_b
    div-double v27, v9, v5

    :cond_18
    iget-wide v2, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v29, v27, v2

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    if-lez v29, :cond_1b

    cmpg-double v29, v27, v33

    if-gtz v29, :cond_19

    div-double v27, v27, v2

    goto :goto_c

    :cond_19
    iget-wide v5, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v27, v2, v5

    div-double v9, v9, v27

    sget-object v27, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    move-wide/from16 v27, v5

    move-wide v5, v9

    :goto_c
    if-eqz v25, :cond_1a

    mul-double v2, v2, v27

    :cond_1a
    move-wide/from16 v37, v27

    move-wide/from16 v27, v2

    move-wide/from16 v2, v37

    goto :goto_d

    :cond_1b
    move-wide/from16 v2, v35

    :goto_d
    cmpg-double v9, v27, v35

    if-gez v9, :cond_1c

    goto :goto_e

    :cond_1c
    move-wide/from16 v35, v27

    :goto_e
    iget-wide v9, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v27, v5, v9

    if-lez v27, :cond_1e

    mul-double v35, v35, v5

    div-double v35, v35, v9

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v5, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v5, v35, v5

    if-lez v5, :cond_1d

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iget-wide v5, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v5, v2, v5

    move-wide/from16 v37, v9

    move-wide v9, v2

    move-wide v2, v5

    move-wide/from16 v5, v37

    move-object/from16 v0, p1

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p1

    move-wide v5, v9

    :goto_f
    move-wide/from16 v9, v35

    goto :goto_10

    :cond_1e
    move-object/from16 v0, p1

    goto :goto_f

    :goto_10
    iput-wide v9, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iput-wide v2, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    iput-wide v5, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-object/from16 v2, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v11, 0x1

    move-object/from16 p2, v1

    move-object v0, v15

    move/from16 v1, p0

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v2, v24

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "no EV compensation configured"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const-string v0, "dynamic exposure algo error"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return-object v19

    :cond_20
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v1, :cond_24

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-static {v3, v4, v12}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "NOISE_REDUCTION_MODE"

    const-string v10, "EDGE_MODE"

    if-eqz v6, :cond_21

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, v26

    invoke-static {v3, v6, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    goto :goto_13

    :cond_21
    move-object/from16 v11, v26

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v6, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :goto_13
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "CONTROL_AWB_LOCK"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    move-object/from16 v6, v23

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz v21, :cond_22

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v7, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_22
    if-eqz v20, :cond_23

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "CONTROL_MODE"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v11}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "CONTROL_SCENE_MODE"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x67

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v7, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "ISMOTCAMERA_KEY"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_23
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v23, v6

    move-object/from16 v26, v11

    goto/16 :goto_12

    :cond_24
    const-string/jumbo v1, "requests"

    move-object/from16 v2, v22

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v19, 0x0

    throw v19

    :cond_26
    const/16 v19, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v19

    :cond_27
    const/16 v19, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v19

    :cond_28
    const/16 v19, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v19

    :cond_29
    move-object/from16 v19, v4

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v19

    :cond_2a
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lux ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") or gain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ") calculation failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return-object v19

    :goto_15
    const-string v0, "Unable to parse input result"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v19
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string p1, "configureStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Landroidx/collection/internal/Lock;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/collection/internal/Lock;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

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
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

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

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

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

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "CONTROL_AF_MODE"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, p0, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "ISMOTCAMERA_KEY"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const-string p1, "as-superportrait"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

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

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "AR-superportrait"

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v6, "enable"

    invoke-static {v6, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_5

    const-string v7, "extension-enable"

    invoke-static {v7, v6, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "state-machine"

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "super-portrait"

    invoke-static {v4, v3, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v3, "frames-required"

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "Unable to determine input frames"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string p0, "SM config missing for algo"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v0

    :cond_5
    const-string p0, "algoConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

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

    const-string/jumbo p2, "results"

    const/4 v3, -0x1

    invoke-static {p2, p1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_2

    const-string p0, "Unable to parse input results"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_3
    const/4 v1, 0x0

    if-eq p2, v3, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not matching requested count "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "totalGain"

    iget-wide v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v3, "algoConfig"

    if-eqz v2, :cond_9

    const-string v4, "brightness"

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    invoke-static {v4, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "curveBrightness"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    const-string v4, "contrast"

    invoke-static {v4, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "curveContrast"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    const-string/jumbo v4, "sharpness"

    invoke-static {v4, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_6

    const-string v1, "deviceID"

    invoke-static {v1, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "luxAvg"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "frameEv"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "toString(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {v2, v3, p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

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
.end method
