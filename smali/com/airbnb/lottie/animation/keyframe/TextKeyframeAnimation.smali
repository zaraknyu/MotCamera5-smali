.class public final Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I
    .locals 10

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v2, :cond_0

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget v3, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v8

    iget v9, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    move v7, p2

    :cond_1
    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v7, p0, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(IFI)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    const v2, 0x2ec8fb09

    if-nez v1, :cond_1

    iget v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    :cond_0
    iget v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    if-ne v3, v2, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    :cond_2
    iget v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v3, :cond_3

    iget v4, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v5, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v9

    iget v10, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v8, p2

    invoke-virtual/range {v3 .. v10}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    move v8, p2

    :cond_4
    iget p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    if-ne p0, v2, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    :cond_5
    iget p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    sget-object p1, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    int-to-float p1, p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float p2, v8, p0

    add-float/2addr p2, p1

    float-to-int p0, p2

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    move v8, p2

    invoke-virtual {p0, p1, v8}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    move v8, p2

    iget-object p2, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v3, :cond_9

    iget v4, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v0, :cond_7

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    :goto_3
    move-object v6, p2

    check-cast v6, Lcom/airbnb/lottie/model/DocumentData;

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez p1, :cond_8

    move-object v7, v6

    goto :goto_4

    :cond_8
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    move-object v7, p1

    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v9

    iget v10, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual/range {v3 .. v10}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    goto :goto_6

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v8, p0

    if-nez p0, :cond_b

    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    goto :goto_6

    :cond_b
    :goto_5
    move-object p0, p2

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
