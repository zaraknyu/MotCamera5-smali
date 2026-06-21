.class public final Lcom/airbnb/lottie/model/layer/ShapeLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

.field public final contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

.field public final dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/CompositionLayer;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    new-instance p3, Lcom/airbnb/lottie/model/content/ShapeGroup;

    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, p1, p1}, Lcom/airbnb/lottie/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->dropShadowEffect:Lcom/motorola/camera/AppFeatures;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    invoke-direct {p2, p0, p0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/motorola/camera/AppFeatures;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    if-ne p2, v0, :cond_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->color:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    if-ne p2, v0, :cond_3

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    :cond_4
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->evaluate(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/DropShadow;

    move-result-object p4

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    return-void
.end method

.method public final getBlurEffect()Lcom/google/android/gms/tasks/zza;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/google/android/gms/tasks/zza;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/google/android/gms/tasks/zza;

    return-object p0
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/content/ContentGroup;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V

    return-void
.end method
