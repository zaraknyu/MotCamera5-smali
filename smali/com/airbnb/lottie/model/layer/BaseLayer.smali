.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field public final animations:Ljava/util/ArrayList;

.field public blurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public blurMaskFilterRadius:F

.field public final boundsMatrix:Landroid/graphics/Matrix;

.field public final canvasBounds:Landroid/graphics/RectF;

.field public final canvasMatrix:Landroid/graphics/Matrix;

.field public final clearPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final contentPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final mask:Landroidx/core/view/MenuHostHelper;

.field public final maskBoundsRect:Landroid/graphics/RectF;

.field public final matrix:Landroid/graphics/Matrix;

.field public final matteBoundsRect:Landroid/graphics/RectF;

.field public matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final mattePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public outlineMasksAndMattes:Z

.field public outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public parentLayers:Ljava/util/List;

.field public final path:Landroid/graphics/Path;

.field public final rect:Landroid/graphics/RectF;

.field public solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v4, Lcom/airbnb/lottie/animation/LPaint;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    iget v4, p2, Lcom/airbnb/lottie/model/layer/Layer;->matteType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Landroidx/core/view/MenuHostHelper;

    const/16 v0, 0x1c

    invoke-direct {p2, p1, v0}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/util/List;I)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Landroidx/core/view/MenuHostHelper;

    iget-object p1, p2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Landroidx/core/view/MenuHostHelper;

    iget-object p1, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p2, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-boolean v2, p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    new-instance p1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eq v2, p1, :cond_4

    iput-boolean v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eq v2, p1, :cond_6

    iput-boolean v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_6
    return-void
.end method


# virtual methods
.method public final addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)Z

    return-void
.end method

.method public final buildParentLayerListIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    iget-boolean v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-boolean v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    iget v4, v2, Lcom/airbnb/lottie/model/layer/Layer;->blendMode:I

    if-eqz v3, :cond_0

    goto/16 :goto_15

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_0
    if-ltz v3, :cond_1

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    iget-object v5, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x64

    :goto_1
    int-to-float v6, v8

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v6, v12

    int-to-float v5, v5

    mul-float/2addr v6, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v6, v5

    mul-float/2addr v6, v12

    float-to-int v12, v6

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v5

    if-nez v5, :cond_4

    if-ne v4, v11, :cond_4

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1, v10, v12, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    return-void

    :cond_4
    :goto_2
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v10, v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    const/4 v15, 0x3

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->matteType:I

    if-ne v2, v15, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v5, v2, v7, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v13, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v3

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Landroidx/core/view/MenuHostHelper;

    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    if-nez v3, :cond_9

    :cond_7
    :goto_4
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_9
    iget-object v3, v5, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v3, :cond_e

    iget-object v14, v5, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/content/Mask;

    iget-object v11, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    if-nez v11, :cond_a

    move/from16 v16, v3

    :goto_6
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_8

    :cond_a
    invoke-virtual {v6, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v11, v14, Lcom/airbnb/lottie/model/content/Mask;->maskMode:I

    invoke-static {v11}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v11

    move/from16 v16, v3

    if-eqz v11, :cond_b

    const/4 v3, 0x1

    if-eq v11, v3, :cond_7

    const/4 v3, 0x2

    if-eq v11, v3, :cond_b

    const/4 v3, 0x3

    if-eq v11, v3, :cond_7

    goto :goto_7

    :cond_b
    iget-boolean v3, v14, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    :goto_7
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-virtual {v6, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v15, :cond_d

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_6

    :cond_d
    iget v14, v2, Landroid/graphics/RectF;->left:F

    iget v11, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v14, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v17, v5

    iget v5, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v14, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v18, v6

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v11, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_e
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v3, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_f
    invoke-virtual {v13, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_10
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_28

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_28

    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-static {v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_15

    const/4 v5, 0x2

    if-eq v2, v5, :cond_14

    const/16 v5, 0x10

    const/4 v6, 0x3

    if-eq v2, v6, :cond_16

    if-eq v2, v3, :cond_13

    const/4 v6, 0x5

    if-eq v2, v6, :cond_12

    if-eq v2, v5, :cond_11

    const/4 v5, 0x0

    goto :goto_a

    :cond_11
    const/16 v5, 0xd

    goto :goto_a

    :cond_12
    const/16 v5, 0x12

    goto :goto_a

    :cond_13
    const/16 v5, 0x11

    goto :goto_a

    :cond_14
    const/16 v5, 0xf

    goto :goto_a

    :cond_15
    const/16 v5, 0xe

    :cond_16
    :goto_a
    sget v2, Landroidx/core/graphics/PaintCompat;->$r8$clinit:I

    if-eqz v5, :cond_17

    invoke-static {v5}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    sget-object v5, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    goto/16 :goto_c

    :pswitch_1
    sget-object v5, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    goto/16 :goto_c

    :pswitch_2
    sget-object v5, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    goto/16 :goto_c

    :pswitch_3
    sget-object v5, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    goto/16 :goto_c

    :pswitch_4
    sget-object v5, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_5
    sget-object v5, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_6
    sget-object v5, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_7
    sget-object v5, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_8
    sget-object v5, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_9
    sget-object v5, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_a
    sget-object v5, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_b
    sget-object v5, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_c
    sget-object v5, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_d
    sget-object v5, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_e
    sget-object v5, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_f
    sget-object v5, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_10
    sget-object v5, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_11
    sget-object v5, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_12
    sget-object v5, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_13
    sget-object v5, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_14
    sget-object v5, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_15
    sget-object v5, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_16
    sget-object v5, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_17
    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_18
    sget-object v5, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_19
    sget-object v5, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_1a
    sget-object v5, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_1b
    sget-object v5, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    goto :goto_c

    :pswitch_1c
    sget-object v5, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    goto :goto_c

    :cond_17
    :goto_b
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_18

    iget v4, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v11

    iget v5, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v11

    iget v6, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v11

    iget v2, v13, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v11

    move/from16 v16, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    move/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v15, v17

    move-object/from16 v20, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    goto :goto_d

    :cond_18
    move/from16 v19, v11

    move-object/from16 v15, v17

    move-object/from16 v20, v18

    move v11, v3

    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    if-nez v1, :cond_19

    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_19
    iget v1, v13, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v19

    iget v1, v13, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v19

    iget v1, v13, Landroid/graphics/RectF;->right:F

    add-float v4, v1, v19

    iget v1, v13, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v19

    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_d
    invoke-virtual {v0, v1, v10, v12, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    const/4 v3, 0x0

    :goto_e
    iget-object v4, v15, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v15, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_25

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/content/Mask;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v12, v15, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget v11, v6, Lcom/airbnb/lottie/model/content/Mask;->maskMode:I

    iget-boolean v6, v6, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    invoke-static {v11}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v11

    move/from16 v17, v3

    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    const v18, 0x40233333    # 2.55f

    if-eqz v11, :cond_23

    move-object/from16 p4, v5

    const/4 v5, 0x1

    if-eq v11, v5, :cond_20

    const/4 v5, 0x2

    if-eq v11, v5, :cond_1e

    const/4 v5, 0x3

    if-eq v11, v5, :cond_1a

    move-object/from16 v4, v20

    const/16 v5, 0xff

    const/4 v11, 0x4

    goto/16 :goto_14

    :cond_1a
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v11, 0x4

    goto :goto_10

    :cond_1b
    const/4 v3, 0x0

    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1d

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/content/Mask;

    iget v6, v6, Lcom/airbnb/lottie/model/content/Mask;->maskMode:I

    const/4 v11, 0x4

    if-eq v6, v11, :cond_1c

    :goto_10
    move-object/from16 v4, v20

    :goto_11
    const/16 v5, 0xff

    goto/16 :goto_14

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1d
    const/16 v3, 0xff

    const/4 v11, 0x4

    invoke-virtual {v14, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_1e
    const/4 v5, 0x3

    const/4 v11, 0x4

    if-eqz v6, :cond_1f

    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    move-object/from16 v6, v20

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_12
    move-object v4, v6

    goto :goto_11

    :cond_1f
    move-object/from16 v6, v20

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    invoke-virtual {v6, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    invoke-virtual {v14, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v1, v6, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_20
    move-object/from16 v4, v20

    const/4 v5, 0x3

    const/4 v11, 0x4

    if-nez v17, :cond_21

    const/high16 v5, -0x1000000

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v5, 0xff

    invoke-virtual {v14, v5}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_13

    :cond_21
    const/16 v5, 0xff

    :goto_13
    if-eqz v6, :cond_22

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v18

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    :cond_22
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_14

    :cond_23
    move-object/from16 v4, v20

    const/16 v5, 0xff

    const/4 v11, 0x4

    if-eqz v6, :cond_24

    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v18

    float-to-int v6, v6

    invoke-virtual {v14, v6}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    :cond_24
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    invoke-virtual {v14, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    invoke-virtual {v1, v4, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_14
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v20, v4

    goto/16 :goto_e

    :cond_25
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_26
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    iget v2, v13, Landroid/graphics/RectF;->left:F

    sub-float v2, v2, v19

    iget v3, v13, Landroid/graphics/RectF;->top:F

    sub-float v3, v3, v19

    iget v4, v13, Landroid/graphics/RectF;->right:F

    add-float v4, v4, v19

    iget v5, v13, Landroid/graphics/RectF;->bottom:F

    add-float v5, v5, v19

    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v7, v8, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_28
    iget-boolean v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    if-eqz v2, :cond_29

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_29
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    :cond_2a
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
.end method

.method public getBlurEffect()Lcom/google/android/gms/tasks/zza;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/google/android/gms/tasks/zza;

    return-object p0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final hasMasksOnThisLayer()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Landroidx/core/view/MenuHostHelper;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onValueChanged()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final recordRenderTime()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    iget-object v1, v0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/HashMap;

    iget-boolean v2, v0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    if-nez v2, :cond_1

    new-instance v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    :cond_2
    const-string v1, "__container"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/ArrayMap$KeyIterator;

    invoke-direct {v0, p0}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public final removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {v2, p4}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    iget-object v3, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {v3, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    iput-object v0, v3, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->matches(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-virtual {v3, p1, v0, p3, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V

    :cond_1
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->matches(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "__container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {v0, p4}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    iget-object p4, v0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    iput-object p0, p4, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p4, v0

    :cond_4
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    if-nez v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_4
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_5
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_7
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Landroidx/core/view/MenuHostHelper;

    if-eqz v1, :cond_9

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_a
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method
