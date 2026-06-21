.class public final Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# virtual methods
.method public final getFloatValue()F
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue(Lcom/airbnb/lottie/value/Keyframe;F)F

    move-result p0

    return p0
.end method

.method public final getFloatValue(Lcom/airbnb/lottie/value/Keyframe;F)F
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v2, :cond_0

    .line 3
    iget v3, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Float;

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Float;

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v8

    .line 5
    iget v9, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v7, p2

    .line 6
    invoke-virtual/range {v2 .. v9}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    move v7, p2

    .line 8
    :cond_1
    iget p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    const p2, -0x358c9d09

    cmpl-float p0, p0, p2

    if-nez p0, :cond_2

    .line 9
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 10
    :cond_2
    iget p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 11
    iget v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    cmpl-float p2, v0, p2

    if-nez p2, :cond_3

    .line 12
    iget-object p2, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 13
    :cond_3
    iget p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 14
    invoke-static {p0, p1, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue(Lcom/airbnb/lottie/value/Keyframe;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
