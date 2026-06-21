.class public final Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field public final color:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public layerInvMatrix:Landroid/graphics/Matrix;

.field public final listener:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final opacity:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/motorola/camera/AppFeatures;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->listener:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object p1, p3, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->color:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p1, p3, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p1, p3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p1, p3, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p1, p3, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/DropShadow;
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->color:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    int-to-float p2, p2

    mul-float/2addr v4, p2

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p2, v4, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    new-instance v3, Lcom/airbnb/lottie/utils/DropShadow;

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    iput v0, v3, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iput v2, v3, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    iput p2, v3, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    const/4 p2, 0x0

    iput-object p2, v3, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/utils/DropShadow;->transformBy(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->layerInvMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->layerInvMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->layerInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->layerInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/utils/DropShadow;->transformBy(Landroid/graphics/Matrix;)V

    return-object v3
.end method

.method public final onValueChanged()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->listener:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->onValueChanged()V

    return-void
.end method

.method public final setOpacityCallback(Lcom/motorola/camera/CameraKpi;)V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation$1;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation$1;-><init>(Lcom/motorola/camera/CameraKpi;)V

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void
.end method
