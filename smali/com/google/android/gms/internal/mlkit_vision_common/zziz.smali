.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zziz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static calcExposureAtEv(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-wide/from16 v7, p3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v7, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iget-wide v9, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v7, v9

    mul-double/2addr v7, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v5, 0x0

    cmpg-double v5, v7, v5

    const/4 v6, 0x0

    if-gtz v5, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v10, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v12, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-wide/from16 v18, v7

    const/16 p3, 0x1

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v10, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v12, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move v14, v6

    const/4 v15, 0x1

    :goto_0
    if-nez v14, :cond_3

    if-ge v15, v1, :cond_3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v16, v10

    const/16 p3, 0x1

    iget-wide v9, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v18, v7

    iget-wide v6, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v9, v6

    cmpg-double v6, v18, v9

    if-gtz v6, :cond_2

    add-int/lit8 v6, v15, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v8, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v8, v18, v6

    move-wide v10, v6

    move-wide v12, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    div-double v8, v18, v6

    move-wide v12, v6

    move-wide v10, v8

    :goto_1
    move/from16 v14, p3

    goto :goto_2

    :cond_2
    move-wide/from16 v10, v16

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v7, v18

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move-wide/from16 v18, v7

    move-wide/from16 v16, v10

    const/16 p3, 0x1

    if-nez v14, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v10, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v12, v18, v10

    goto :goto_3

    :cond_4
    move-wide/from16 v10, v16

    :goto_3
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v0, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iget-wide v5, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iget-wide v7, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v5, v7

    cmpl-double v7, v0, v5

    if-lez v7, :cond_5

    move-wide v0, v5

    :cond_5
    cmpl-double v7, v10, v5

    if-lez v7, :cond_6

    div-double v12, v18, v5

    move-wide v10, v5

    :cond_6
    sget-object v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    if-eq v3, v7, :cond_a

    sget-object v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    if-ne v3, v7, :cond_7

    const-wide v7, 0x416312d000000000L    # 1.0E7

    goto :goto_4

    :cond_7
    const-wide v7, 0x415fca0555555555L    # 8333333.333333333

    :goto_4
    cmpl-double v3, v12, v7

    if-lez v3, :cond_a

    div-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v9, v7

    const-wide v11, 0x40b3880000000000L    # 5000.0

    sub-double v13, v9, v11

    cmpl-double v3, v13, v18

    if-lez v3, :cond_9

    sub-double/2addr v9, v7

    :cond_8
    :goto_5
    move-wide v12, v9

    goto :goto_6

    :cond_9
    add-double/2addr v11, v9

    mul-double/2addr v11, v0

    cmpg-double v0, v11, v18

    if-gez v0, :cond_8

    add-double/2addr v9, v7

    goto :goto_5

    :goto_6
    div-double v10, v18, v12

    :cond_a
    iget-wide v0, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v3, v10, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_c

    cmpg-double v3, v10, v5

    if-gtz v3, :cond_b

    div-double/2addr v10, v0

    move-wide v14, v12

    const/4 v3, 0x0

    :goto_7
    move-wide v12, v10

    move-wide v10, v0

    goto :goto_8

    :cond_b
    iget-wide v10, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v12, v0, v10

    div-double v12, v18, v12

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    move/from16 v3, p3

    move-wide v14, v12

    goto :goto_7

    :cond_c
    move-wide v14, v12

    const/4 v3, 0x0

    move-wide v12, v7

    :goto_8
    cmpg-double v9, v10, v7

    if-gez v9, :cond_d

    goto :goto_9

    :cond_d
    move-wide v7, v10

    :goto_9
    iget-wide v9, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v11, v14, v9

    if-lez v11, :cond_10

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    mul-double v16, v7, v12

    cmpg-double v3, v16, v5

    if-gez v3, :cond_f

    div-double v7, v18, v9

    cmpl-double v3, v7, v5

    if-lez v3, :cond_e

    iget-wide v12, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    :goto_a
    move-wide v14, v9

    move/from16 v9, p3

    goto :goto_c

    :cond_e
    div-double v12, v7, v0

    goto :goto_a

    :cond_f
    move/from16 v9, p3

    :goto_b
    move-wide v0, v7

    goto :goto_c

    :cond_10
    move v9, v3

    goto :goto_b

    :goto_c
    iput-wide v0, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iput-wide v12, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    iput-wide v14, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    if-eqz v9, :cond_11

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_11
    return-void
.end method

.method public static constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "CONTROL_AE_MODE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "EDGE_MODE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "NOISE_REDUCTION_MODE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "CONTROL_AE_LOCK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "SENSOR_SENSITIVITY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    float-to-double v3, p2

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v0, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    iget-wide p1, p1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    add-double/2addr p1, v3

    double-to-long p1, p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "SENSOR_EXPOSURE_TIME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "SENSOR_FRAME_DURATION"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    return-void
.end method

.method public static getAntibandingStrategy(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;
    .locals 7

    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->NONE:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "getName(...)"

    const/4 v3, -0x1

    invoke-static {v1, v2, p0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v2, p0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    sget-object v5, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v5, v2, p0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v2, :cond_8

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v6, :cond_3

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v5, :cond_a

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0

    :cond_4
    :goto_1
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->Companion:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->values()[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->values()[Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    aget-object p0, v1, p0

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_MAX:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    :goto_3
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_AUTO_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    if-ne p0, v1, :cond_7

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0

    :cond_7
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;->MODE_AUTO_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$CAM_ANTIBANDING_HAL;

    if-ne p0, v1, :cond_a

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v6, :cond_9

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_50HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v5, :cond_a

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;->ILLUMINANT_60HZ:Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$AntibandingMode;

    return-object p0

    :cond_a
    :goto_4
    return-object v0
.end method

.method public static getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    :goto_0
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "getName(...)"

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v1, p0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    return-wide v0

    :cond_1
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0
.end method

.method public static getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z
    .locals 9

    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "getName(...)"

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    const-string v4, "ExposureBracketUtil"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v5, v0

    iput-wide v5, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1, p0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v5, v0

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    iput-wide v5, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1, p0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    iput-wide v0, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const-wide v0, 0x41adcd6500000000L    # 2.5E8

    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Range;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    mul-float/2addr p0, p2

    float-to-double p2, p0

    iput-wide p2, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v7

    iput-wide p0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const-string p0, "exposure time is invalid"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const-string p0, "isp raw boost is invalid"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const-string/jumbo p0, "sensor gain is invalid"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string p2, "getName(...)"

    const/4 p4, -0x1

    invoke-static {p1, p2, p0, p4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide p1, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    :try_start_0
    move-object p4, p0

    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    :goto_0
    mul-double/2addr p1, v0

    iput-wide p1, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;
    .locals 7

    const-string v0, "getName(...)"

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    :goto_0
    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v0, p0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_1
    :goto_1
    const-string p0, "ExposureBracketUtil"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    const-string v0, "iso100_gain is zero; using default"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    mul-float v1, p0, p1

    const/high16 p0, 0x42c80000    # 100.0f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float p1, p0, p1

    goto :goto_2

    :cond_3
    const-string v0, "Vendor tag iso100_gain not found"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getLux(Ljava/lang/String;Lorg/json/JSONObject;)F
    .locals 5

    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "getName(...)"

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/IqConfigManager;->iqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_1
    if-nez p0, :cond_2

    sget-object p0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v1, p1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_4
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v1, p1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1, p1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v1, p1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-eqz p0, :cond_7

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v1, p1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/high16 p1, 0x40900000    # 4.5f

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v3, p0

    mul-long/2addr v1, v3

    long-to-float p0, v1

    const v0, 0x51ba43b7    # 1.0E11f

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    return v0

    :cond_7
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F
    .locals 5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;->getLux(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    filled-new-array {v0}, [I

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "MTK_CSHOT_MODE_KEY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
