.class public final synthetic Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    int-to-float v0, v0

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v9, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v12

    :goto_0
    add-int/lit8 v9, v5, -0x1

    if-ge v8, v9, :cond_2

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v0, v13

    if-ltz v13, :cond_1

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v0, v13

    if-gtz v13, :cond_1

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_3

    move v8, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v12

    :cond_3
    :goto_1
    iget-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mStaggeredMeter:Z

    if-eqz v5, :cond_4

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    if-eq v8, v5, :cond_4

    iput v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    iput v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    monitor-enter v3

    :try_start_0
    iput-boolean v12, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout$2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v5

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v9

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v0

    sub-float/2addr v0, v5

    sub-float/2addr v9, v5

    div-float/2addr v0, v9

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    iget-object v9, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-boolean v13, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    if-eqz v13, :cond_e

    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v14, v13

    if-lt v8, v14, :cond_5

    goto/16 :goto_5

    :cond_5
    iput v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    aget-object v13, v13, v8

    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v15, v3, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v15, v15

    sub-int/2addr v15, v11

    if-ne v8, v15, :cond_6

    add-int/lit8 v13, v13, -0x1

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v13, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    neg-float v14, v8

    invoke-virtual {v13, v14, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    sub-float/2addr v5, v8

    mul-float/2addr v5, v0

    invoke-virtual {v13, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    invoke-virtual {v9, v6, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v5, v3, v10

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v5, :cond_a

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSliderScale:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v2

    div-float/2addr v4, v8

    div-float v5, v0, v8

    add-float/2addr v5, v4

    sub-float v10, v5, v3

    mul-float/2addr v1, v6

    mul-float/2addr v1, v2

    sub-float v1, v10, v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_9

    cmpl-float v2, v10, v0

    if-ltz v2, :cond_c

    :cond_8
    move v10, v0

    goto :goto_4

    :cond_9
    :goto_3
    move v11, v12

    goto :goto_4

    :cond_a
    div-float/2addr v0, v8

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSliderScale:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v2

    div-float/2addr v4, v8

    sub-float/2addr v0, v4

    sub-float/2addr v0, v3

    mul-float/2addr v1, v6

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    cmpl-float v2, v1, v10

    if-lez v2, :cond_b

    cmpg-float v2, v0, v10

    if-gez v2, :cond_8

    goto :goto_4

    :cond_b
    move v10, v0

    goto :goto_3

    :cond_c
    :goto_4
    if-eqz v11, :cond_d

    iput v7, v9, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    iput v1, v9, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iput v10, v9, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    goto :goto_5

    :cond_d
    iput v12, v9, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    :cond_e
    :goto_5
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    int-to-float v0, v0

    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mRtl:Z

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v9, :cond_f

    goto/16 :goto_c

    :cond_f
    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-static {v11, v9}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v13, v7

    invoke-static {v7, v9}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarTotalDegree(II)F

    move-result v7

    int-to-float v9, v9

    invoke-static {v9}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v9

    invoke-static {v13}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v14

    sub-float/2addr v9, v14

    div-float/2addr v7, v9

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v9

    invoke-static {v13}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v13

    sub-float/2addr v9, v13

    mul-float/2addr v9, v7

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v4, :cond_10

    move v13, v7

    goto :goto_6

    :cond_10
    move v13, v3

    :goto_6
    mul-float/2addr v13, v9

    iget-boolean v14, v5, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mInitialized:Z

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-nez v14, :cond_11

    goto :goto_c

    :cond_11
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-direct {v14, v13, v10, v10, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    float-to-int v10, v0

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mShortcutItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;

    iget v14, v13, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mZoomValue:I

    if-ne v10, v14, :cond_12

    move v14, v11

    goto :goto_8

    :cond_12
    move v14, v12

    :goto_8
    iput-boolean v14, v13, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mSelected:Z

    iget-object v15, v13, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v15, v13, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v14, :cond_13

    iget-object v13, v13, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v13

    iget v13, v13, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    goto :goto_9

    :cond_13
    move v13, v8

    :goto_9
    invoke-virtual {v15, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    if-eqz v14, :cond_14

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v13, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v13

    goto :goto_a

    :cond_14
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_a
    invoke-virtual {v15, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_7

    :cond_15
    if-eqz v4, :cond_16

    move v3, v7

    :cond_16
    iput v2, v5, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    iput v9, v5, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iput v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17

    goto :goto_b

    :cond_17
    move v11, v12

    :goto_b
    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updateCutoutRect(Z)V

    :cond_18
    :goto_c
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->generateActivePhoto(I)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    sget-object v4, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v8, v4, v2

    :goto_d
    if-eq v8, v11, :cond_1b

    if-eq v8, v9, :cond_1b

    if-eq v8, v7, :cond_1a

    const-string v2, ""

    goto :goto_e

    :cond_1a
    const-string v2, "%ds"

    goto :goto_e

    :cond_1b
    const-string v2, "%d"

    :goto_e
    iget v4, v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->totalTime:I

    int-to-long v13, v4

    const-wide/32 v15, 0x5265c00

    cmp-long v8, v13, v15

    if-ltz v8, :cond_1c

    sub-int v0, v4, v0

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1d

    const-wide/16 v15, 0x3e8

    int-to-long v13, v0

    div-long/2addr v13, v15

    invoke-static {v5, v13, v14}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1d
    const-wide/16 v15, 0x3e8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    int-to-long v13, v0

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_f
    iget-object v4, v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    sget-object v5, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-ne v4, v5, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    int-to-long v4, v0

    div-long/2addr v4, v15

    iget v0, v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mGestureType:I

    const-wide/16 v13, 0x3

    if-eq v0, v11, :cond_22

    const v2, 0x7f0801dc

    if-eq v0, v9, :cond_21

    if-eq v0, v7, :cond_1e

    goto/16 :goto_10

    :cond_1e
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    cmp-long v0, v4, v13

    if-nez v0, :cond_1f

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const v2, 0x7f11001f

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_10

    :cond_1f
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    const-wide/16 v6, 0x2

    cmp-long v0, v4, v6

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_20

    invoke-virtual {v1, v10, v2}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->animateProgress(FF)V

    goto :goto_10

    :cond_20
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->animateProgress(FF)V

    goto :goto_10

    :cond_21
    int-to-long v6, v7

    sub-long/2addr v6, v4

    long-to-float v0, v6

    const v3, 0x3eaa7efa    # 0.333f

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    add-float/2addr v3, v0

    invoke-virtual {v1, v0, v3}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->animateProgress(FF)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_10

    :cond_22
    cmp-long v0, v4, v13

    if-nez v0, :cond_23

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const v1, 0x7f08024b

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_10

    :cond_23
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->counterTextAnimation(Ljava/lang/String;)V

    goto :goto_10

    :cond_24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->counterTextAnimation(Ljava/lang/String;)V

    :goto_10
    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    iput v0, v2, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v6, :cond_25

    iget-object v5, v5, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2, v5, v1}, Lcom/motorola/camera/ui/widgets/LevelerView;->computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateResource()V

    :cond_25
    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpg-float v5, v0, v10

    if-gez v5, :cond_26

    add-float/2addr v0, v4

    :cond_26
    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_27

    sub-float/2addr v0, v4

    :cond_27
    add-float/2addr v1, v0

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/LevelerView$1;

    invoke-direct {v1, v12, v2}, Lcom/motorola/camera/ui/widgets/LevelerView$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_4
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iput v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->updateFrameLayoutParams()V

    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->inflateViewStub()V

    iget-object v1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v1, "getContext(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    goto :goto_11

    :cond_28
    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    if-eqz v1, :cond_29

    :goto_11
    move v13, v9

    move v9, v2

    goto/16 :goto_16

    :cond_29
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v10, 0x4

    invoke-direct {v1, v7, v8, v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    move-object v12, v6

    move v13, v9

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    const/4 v11, 0x1

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-direct {v3, v7, v8, v4, v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;II)V

    filled-new-array {v1, v12, v6, v3}, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move v9, v2

    move-object v2, v1

    move v1, v9

    move v9, v13

    goto :goto_12

    :cond_2a
    move v13, v9

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    const/4 v11, 0x1

    move v9, v2

    move v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    move v1, v9

    move v9, v10

    filled-new-array {v6}, [Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_12

    :cond_2b
    move v1, v2

    move v2, v3

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    invoke-direct {v3, v7, v8, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    const/4 v11, 0x0

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-direct {v4, v7, v8, v2, v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;II)V

    filled-new-array {v3, v6, v4}, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_12
    move v13, v9

    :goto_13
    move v9, v1

    goto :goto_14

    :cond_2c
    move v1, v2

    move v2, v3

    move v10, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v3

    if-eqz v3, :cond_2d

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    invoke-direct {v3, v7, v8, v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    move v13, v9

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-direct {v4, v7, v8, v2, v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;II)V

    filled-new-array {v3, v6, v4}, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_13

    :cond_2d
    move v13, v9

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    const/4 v11, 0x0

    move v9, v1

    move v10, v2

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-direct {v1, v7, v8, v13, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;II)V

    filled-new-array {v6, v1}, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_14

    :cond_2e
    move v9, v1

    move-object v2, v5

    :goto_14
    iput-object v2, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-direct {v1, v7, v8}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    goto :goto_15

    :cond_2f
    move-object v1, v5

    :goto_15
    iput-object v1, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    :goto_16
    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :cond_30
    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    if-eqz v1, :cond_31

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    :cond_31
    iput-object v5, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v5, :cond_32

    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_32

    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_32
    iget-object v0, v7, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    :cond_33
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_34
    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->trySlowMotionReady(I)V

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-eqz v1, :cond_35

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->setSwatchColor(I)V

    :cond_35
    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.sliderbar.LongExposureAdapter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->setSelectedMode$1(I)V

    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.sliderbar.FilterMeisheAdapter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->setSelectedFilter(I)V

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v1, :cond_36

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    if-eqz v1, :cond_36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_36
    return-void

    :pswitch_b
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->getProSettings()V

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-nez v3, :cond_37

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;-><init>(Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;)V

    iput-object v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_39

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_17

    :cond_37
    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_38

    if-eq v0, v8, :cond_38

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0, v12}, Landroid/view/View;->setSelected(Z)V

    :cond_38
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_39
    :goto_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    if-eq v0, v3, :cond_3c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    invoke-virtual {v1, v0, v11}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateItemGap(IZ)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemDecorator:Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    if-eqz v0, :cond_3a

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mItemGap:I

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    :cond_3a
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_3b
    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0, v11}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->setRecyclerViewInCenter(Landroid/view/View;IZ)V

    :cond_3c
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSeekBar:Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->updateExpMark()V

    :cond_3d
    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->buttonControl:Landroid/widget/Button;

    if-eqz v1, :cond_40

    div-int/lit8 v2, v0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3e

    const/16 v4, 0x64

    if-eq v0, v4, :cond_3e

    add-int/lit8 v2, v2, 0x1

    :cond_3e
    rem-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_3f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    const-string v4, "RATIO_INT_PATTERN"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_3f
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_LABEL_PATTERN:Ljava/lang/String;

    const-string v3, "RATIO_LABEL_PATTERN"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_40
    return-void

    :pswitch_d
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v3, "mEventHandler"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/16 v4, 0x3e8

    invoke-static {v2, v4, v0, v3, v5}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateMenu(Z)V

    :cond_41
    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070390

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07038f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-float/2addr v4, v2

    float-to-int v2, v4

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :pswitch_f
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.dualcapture.DualCaptureLayoutAdapter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->setSelectedLayout(I)V

    return-void

    :pswitch_10
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v1

    iput v0, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->rotation:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->applyRotation()V

    return-void

    :pswitch_11
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v3, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v3, :cond_42

    goto :goto_19

    :cond_42
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz v1, :cond_43

    iput v0, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_43
    :goto_19
    return-void

    :pswitch_12
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v0, :cond_44

    const-string v0, "McfCaptureRequestRunnable"

    const-string/jumbo v1, "processForTimeout invalid holder!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_44
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    if-nez v3, :cond_45

    goto :goto_1a

    :cond_45
    iput-boolean v11, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :goto_1a
    return-void

    :pswitch_13
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_46

    invoke-virtual {v1, v2, v0, v12}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling$1(Landroid/view/View;IZ)V

    :cond_46
    return-void

    :pswitch_14
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v1, Landroidx/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v1, v0}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void

    :pswitch_15
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/core/content/res/CamUtils;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1, v0}, Landroidx/core/content/res/CamUtils;->onFontRetrievalFailed(I)V

    return-void

    :pswitch_16
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/shared/OrientationEvent$1;

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v1, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v2, v1, Lcom/motorola/camera/shared/OrientationEvent;->mCliDisplay:Landroid/view/Display;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v2, v0, :cond_4a

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v1}, Lcom/motorola/camera/shared/OrientationEvent;->getDisplayRotation()I

    move-result v0

    iput v0, v1, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    iget-boolean v0, v1, Lcom/motorola/camera/shared/OrientationEvent;->mIsCliDisplay:Z

    if-eqz v0, :cond_48

    iget-object v0, v1, Lcom/motorola/camera/shared/OrientationEvent;->mCliManager:Lmotorola/core_services/cli/CLIManager;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lmotorola/core_services/cli/CLIManager;->getDeviceState()I

    move-result v0

    if-ne v0, v7, :cond_47

    iget v0, v1, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    sput v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    :cond_47
    invoke-virtual {v1}, Lcom/motorola/camera/shared/OrientationEvent;->updateDeviceState()V

    goto :goto_1b

    :cond_48
    iget-boolean v0, v1, Lcom/motorola/camera/shared/OrientationEvent;->mIsDesktopMode:Z

    if-eqz v0, :cond_49

    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mLastRawOrientation:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/shared/OrientationEvent;->onOrientationChanged(I)V

    :cond_49
    :goto_1b
    invoke-virtual {v1}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged$1()V

    :cond_4a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
