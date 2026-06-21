.class public Lcom/motorola/camera/Controller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAccuracyChanged$com$motorola$camera$Controller$2(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final onAccuracyChanged$com$motorola$camera$arcsoft$StellarTrackParams$1(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final onAccuracyChanged$com$motorola$camera$shared$OrientationEventListener$AccSensorEventListenerImpl(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final onAccuracyChanged$com$motorola$camera$ui$UIManager$2(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final onAccuracyChanged$com$motorola$camera$ui$widgets$gl$TouchRoiComponent$2(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/Controller$2;->$r8$classId:I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/Controller$2;->$r8$classId:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    if-eqz v7, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v7, v5

    aget v9, v7, v4

    aget v7, v7, v3

    iget-object v10, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    const/16 v11, 0xa

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ne v10, v11, :cond_f

    move v10, v3

    move v15, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move/from16 v16, v15

    const/16 p0, 0x0

    iget-wide v14, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    const-wide/16 v17, 0x0

    cmp-long v1, v14, v17

    if-eqz v1, :cond_c

    sub-long v14, v3, v14

    long-to-float v1, v14

    const/high16 v14, 0x42200000    # 40.0f

    cmpg-float v14, v1, v14

    if-gez v14, :cond_1

    goto/16 :goto_a

    :cond_1
    iget v14, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    mul-float/2addr v8, v1

    add-float/2addr v8, v14

    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    mul-float/2addr v9, v1

    add-float/2addr v9, v8

    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    mul-float/2addr v7, v1

    add-float/2addr v7, v8

    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x3

    if-lt v1, v11, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v11, :cond_2

    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v27, v10

    goto/16 :goto_1

    :cond_2
    move/from16 v14, p0

    move v15, v14

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move v9, v5

    :goto_0
    if-ge v9, v1, :cond_3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v8, v25

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    move/from16 v25, v5

    move-object/from16 v26, v6

    iget-wide v5, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v5, v5

    add-float/2addr v15, v5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v5, v5, v25

    add-float v19, v19, v5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v5, v5, v16

    add-float v20, v20, v5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v5, v5, v10

    add-float v21, v21, v5

    float-to-double v5, v14

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    move/from16 v27, v10

    iget-wide v10, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-double v10, v10

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v10, v5

    double-to-float v14, v10

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v5, v5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v6, v6, v25

    mul-float/2addr v5, v6

    add-float v22, v5, v22

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v5, v5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v6, v6, v16

    mul-float/2addr v5, v6

    add-float v23, v5, v23

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v5, v5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v6, v6, v27

    mul-float/2addr v5, v6

    add-float v24, v5, v24

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v25

    move-object/from16 v6, v26

    move/from16 v10, v27

    const/16 v11, 0xa

    goto/16 :goto_0

    :cond_3
    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v27, v10

    int-to-float v1, v1

    mul-float/2addr v14, v1

    mul-float v5, v15, v15

    sub-float/2addr v14, v5

    cmpl-float v5, v14, p0

    if-nez v5, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    mul-float v22, v22, v1

    mul-float v19, v19, v15

    sub-float v22, v22, v19

    div-float v22, v22, v14

    mul-float v23, v23, v1

    mul-float v20, v20, v15

    sub-float v23, v23, v20

    div-float v23, v23, v14

    mul-float v1, v1, v24

    mul-float v15, v15, v21

    sub-float/2addr v1, v15

    div-float/2addr v1, v14

    new-array v8, v7, [F

    aput v22, v8, v25

    aput v23, v8, v16

    aput v1, v8, v27

    goto :goto_3

    :cond_5
    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v27, v10

    :goto_2
    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v5, 0xa

    if-lt v1, v5, :cond_9

    move/from16 v1, p0

    move v5, v1

    move v14, v5

    move/from16 v6, v16

    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    move-object/from16 v9, v26

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v25

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aget v12, v12, v25

    sub-float/2addr v10, v12

    add-float/2addr v14, v10

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v16

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aget v12, v12, v16

    sub-float/2addr v10, v12

    add-float/2addr v1, v10

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v27

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v27

    sub-float/2addr v10, v11

    add-float/2addr v5, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v9, v26

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    if-nez v6, :cond_7

    new-array v6, v7, [F

    aput v14, v6, v25

    aput v1, v6, v16

    aput v5, v6, v27

    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    :cond_7
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    aget v6, v6, v25

    invoke-static {v0, v14, v6}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->-$$Nest$misAcceleration(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    aget v6, v6, v16

    invoke-static {v0, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->-$$Nest$misAcceleration(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    aget v1, v1, v27

    invoke-static {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->-$$Nest$misAcceleration(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    move/from16 v1, v16

    goto :goto_5

    :cond_9
    move-object/from16 v9, v26

    :cond_a
    move/from16 v1, v25

    :goto_5
    if-eqz v8, :cond_b

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_b

    move/from16 v5, v25

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    move/from16 v5, v25

    :goto_6
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    sub-long v8, v3, v8

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    new-array v7, v7, [F

    aput v10, v7, v5

    aput v11, v7, v16

    aput v12, v7, v27

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;-><init>(J[F)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_d

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    iget-wide v5, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    cmp-long v2, v5, v17

    if-nez v2, :cond_e

    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    :cond_e
    move v4, v1

    goto/16 :goto_9

    :cond_f
    move/from16 v16, v4

    const/16 p0, 0x0

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    cmpl-float v3, v2, p0

    if-eqz v3, :cond_10

    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v3, v3

    sub-float/2addr v3, v2

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v2

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    mul-float v4, v8, v3

    add-float/2addr v4, v2

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    mul-float v5, v9, v3

    add-float/2addr v5, v2

    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v14, v2

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_8

    :cond_10
    move/from16 v2, p0

    move v3, v2

    move v14, v3

    :goto_8
    iget-wide v4, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v4

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    float-to-double v4, v8

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v8, v9

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v8, v4

    float-to-double v4, v7

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v2

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v4

    float-to-double v2, v3

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_11

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_12

    :cond_11
    move/from16 v4, v16

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_14

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->registerSensor(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation(Z)V

    :cond_13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_14
    :goto_a
    return-void

    :pswitch_0
    move/from16 v16, v4

    iget-object v0, v0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_19

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v25, 0x0

    aget v1, v1, v25

    iget v2, v0, Lcom/motorola/camera/ui/UIManager;->mAmbientLux:F

    const v3, 0x461c4000    # 10000.0f

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_15

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_16

    :cond_15
    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_18

    :cond_16
    cmpg-float v2, v1, v3

    if-gez v2, :cond_17

    move/from16 v4, v16

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/UIManager;->adjustScreenBrightness(Z)V

    :cond_18
    iput v1, v0, Lcom/motorola/camera/ui/UIManager;->mAmbientLux:F

    :cond_19
    return-void

    :pswitch_1
    move/from16 v27, v3

    move/from16 v16, v4

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v25, 0x0

    aget v2, v1, v25

    neg-float v2, v2

    aget v3, v1, v16

    neg-float v3, v3

    aget v1, v1, v27

    neg-float v1, v1

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v5, v4

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v5, v4

    mul-float/2addr v1, v1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_1b

    neg-float v1, v3

    float-to-double v3, v1

    float-to-double v1, v2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5a

    :goto_c
    const/16 v2, 0x168

    if-lt v1, v2, :cond_1a

    add-int/lit16 v1, v1, -0x168

    goto :goto_c

    :cond_1a
    :goto_d
    if-gez v1, :cond_1c

    add-int/lit16 v1, v1, 0x168

    goto :goto_d

    :cond_1b
    const/4 v1, -0x1

    :cond_1c
    iget-object v0, v0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;

    iget v2, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    if-eq v1, v2, :cond_1d

    iput v1, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->onOrientationChanged(I)V

    :cond_1d
    return-void

    :pswitch_2
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1e

    const/16 v2, 0x9

    new-array v3, v2, [F

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v3, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v2, :cond_1e

    iget-object v1, v0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/arcsoft/StellarTrackParams;

    iget-object v1, v1, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mRotationMatrix:[D

    aget v4, v3, v5

    float-to-double v6, v4

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1e
    return-void

    :pswitch_3
    iget-object v2, v0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/Controller;

    iget-object v2, v2, Lcom/motorola/camera/Controller;->mWindowLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/Controller$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v25, 0x0

    aget v1, v1, v25

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->hingeAngleChanged(I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetPlanarFlag()V
    .locals 0

    return-void
.end method
