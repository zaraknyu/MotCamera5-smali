.class public final Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final point:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 2

    iput p2, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    invoke-direct {p1}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/GradientColor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/airbnb/lottie/model/content/GradientColor;

    new-array p2, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;
    .locals 11

    .line 37
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 38
    move-object v6, v1

    check-cast v6, Landroid/graphics/PointF;

    .line 39
    move-object v7, v2

    check-cast v7, Landroid/graphics/PointF;

    .line 40
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v3, :cond_0

    .line 41
    iget v4, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v9

    .line 43
    iget v10, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v8, p2

    .line 44
    invoke-virtual/range {v3 .. v10}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    if-eqz p0, :cond_0

    return-object p0

    .line 45
    :cond_0
    iget p0, v6, Landroid/graphics/PointF;->x:F

    iget p1, v7, Landroid/graphics/PointF;->x:F

    invoke-static {p1, p0, p3, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    iget p1, v6, Landroid/graphics/PointF;->y:F

    iget p2, v7, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p1, p4, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object v0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 3
    move-object v6, v1

    check-cast v6, Lcom/airbnb/lottie/value/ScaleXY;

    .line 4
    move-object v7, v2

    check-cast v7, Lcom/airbnb/lottie/value/ScaleXY;

    .line 5
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v3, :cond_0

    .line 6
    iget v4, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v9

    .line 8
    iget v10, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v8, p2

    .line 9
    invoke-virtual/range {v3 .. v10}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/ScaleXY;

    if-eqz p0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_0
    move v8, p2

    .line 10
    :cond_1
    iget p0, v6, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    iget p1, v7, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 11
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    .line 12
    iget p1, v6, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    iget p2, v7, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 13
    invoke-static {p1, p2, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    .line 14
    iput p0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 15
    iput p1, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    :goto_0
    return-object v0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    move v8, p2

    .line 17
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object p2, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 19
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_4

    .line 21
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    goto :goto_3

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_5

    .line 22
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    goto :goto_3

    .line 23
    :cond_5
    array-length v2, v3

    iget-object v4, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v5, v4

    if-ne v2, v5, :cond_8

    const/4 v2, 0x0

    .line 24
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_6

    .line 25
    iget-object v5, p2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aget v5, v5, v2

    iget-object v6, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aget v6, v6, v2

    invoke-static {v5, v6, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    aput v5, v1, v2

    .line 26
    aget v5, v3, v2

    aget v6, v4, v2

    invoke-static {v5, v8, v6}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(IFI)I

    move-result v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_6
    array-length p1, v3

    :goto_2
    array-length p2, v1

    if-ge p1, p2, :cond_7

    .line 28
    array-length p2, v3

    add-int/lit8 p2, p2, -0x1

    aget p2, v1, p2

    aput p2, v1, p1

    .line 29
    array-length p2, v3

    add-int/lit8 p2, p2, -0x1

    aget p2, v0, p2

    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object p0

    .line 30
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v4

    const-string v0, ")"

    .line 31
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    move v8, p2

    .line 33
    invoke-virtual {p0, p1, v8, v8, v8}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
