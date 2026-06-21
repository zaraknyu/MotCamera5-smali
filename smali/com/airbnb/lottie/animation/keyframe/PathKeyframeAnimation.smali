.class public final Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final pathMeasure:Landroid/graphics/PathMeasure;

.field public pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

.field public final point:Landroid/graphics/PointF;

.field public final pos:[F

.field public final tangent:[F


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->tangent:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v4, v0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    iget v9, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p2, :cond_1

    return-object p2

    :cond_0
    move v8, p2

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    iget-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pathMeasureKeyframe:Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    mul-float v0, v8, p1

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->pos:[F

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->tangent:[F

    invoke-virtual {p2, v0, v1, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget p2, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframeAnimation;->point:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p2, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_4

    aget p1, v3, v2

    mul-float/2addr p1, v0

    aget p2, v3, v4

    mul-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    return-object p0

    :cond_4
    cmpl-float p2, v0, p1

    if-lez p2, :cond_5

    aget p2, v3, v2

    sub-float/2addr v0, p1

    mul-float/2addr p2, v0

    aget p1, v3, v4

    mul-float/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/PointF;->offset(FF)V

    :cond_5
    return-object p0
.end method
