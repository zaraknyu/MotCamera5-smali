.class public final Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final codePointCache:Landroidx/collection/LongSparseArray;

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final contentsForCharacter:Ljava/util/HashMap;

.field public final fillPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final matrix:Landroid/graphics/Matrix;

.field public final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final rectF:Landroid/graphics/RectF;

.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final strokePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeUnits:I

.field public textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textSubLines:Ljava/util/ArrayList;

.field public final trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/HashMap;

    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    iput v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:I

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object p1, p1, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz p1, :cond_0

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/AppFeatures;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/AppFeatures;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/AppFeatures;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/AppFeatures;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/AppFeatures;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/graphics/AndroidPaint;

    if-eqz p2, :cond_5

    iget-object p2, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/graphics/AndroidPaint;

    if-eqz p2, :cond_6

    iget-object p2, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object p2, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/graphics/AndroidPaint;

    if-eqz p2, :cond_7

    iget-object p2, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/AndroidPaint;

    if-eqz p1, :cond_8

    iget p1, p1, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    iput p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:I

    :cond_8
    return-void
.end method

.method public static drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_4
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_6
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_8
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TYPEFACE:Landroid/graphics/Typeface;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_a

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_a
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT:Ljava/lang/String;

    if-ne p2, v0, :cond_c

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;

    invoke-direct {v1, p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;-><init>(Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/motorola/camera/CameraKpi;Lcom/airbnb/lottie/model/DocumentData;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    :cond_c
    return-void
.end method

.method public final configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/animation/LPaint;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/16 v3, 0x64

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    if-eqz v4, :cond_5

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_5
    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v0

    int-to-float p2, p2

    mul-float/2addr v3, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_6
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz p2, :cond_7

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_7
    iget p0, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v1, v10, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/HashMap;

    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/model/Font;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v11, v3, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    iget-object v12, v3, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v9, v8, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v14, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    const-string v2, "\n"

    const-string v4, "\u0003"

    const-string v5, "\r"

    const-string v6, "\r\n"

    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v16, 0x41200000    # 10.0f

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/high16 v19, 0x42c80000    # 100.0f

    move/from16 v20, v13

    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/animation/LPaint;

    const/16 v22, 0x1

    move-object/from16 v23, v15

    if-nez v1, :cond_e

    iget-object v1, v14, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    iget v1, v1, Landroidx/collection/SparseArrayCompat;->size:I

    if-lez v1, :cond_e

    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    :goto_0
    div-float v1, v1, v19

    sget-object v19, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Lcom/airbnb/lottie/utils/Utils$1;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    const/16 v24, 0x0

    move-object/from16 v15, v19

    check-cast v15, [F

    aput v24, v15, v20

    aput v24, v15, v22

    sget v19, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    aput v19, v15, v18

    aput v19, v15, v17

    move/from16 v19, v1

    move-object/from16 v1, p2

    invoke-virtual {v1, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v15, v18

    aget v18, v15, v20

    sub-float v1, v1, v18

    aget v17, v15, v17

    aget v15, v15, v22

    sub-float v15, v17, v15

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    float-to-double v13, v1

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    float-to-double v10, v15

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    iget-object v1, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v1, v1

    div-float v1, v1, v16

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    add-float/2addr v1, v2

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :goto_2
    move/from16 v13, v20

    const/4 v15, -0x1

    :goto_3
    if-ge v13, v11, :cond_d

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    if-nez v2, :cond_4

    move/from16 v2, v24

    goto :goto_4

    :cond_4
    iget v2, v2, Landroid/graphics/PointF;->x:F

    :goto_4
    const/4 v6, 0x1

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    move-result-object v1

    move/from16 v2, v20

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    iget v14, v6, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    invoke-virtual {v0, v7, v9, v15, v14}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    move-object/from16 p2, v1

    move/from16 v14, v20

    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v14, v1, :cond_a

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v17, v10

    move-object/from16 v10, v28

    invoke-static {v1, v12, v10}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v2

    move/from16 p4, v5

    move-object/from16 v2, v27

    iget-object v5, v2, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/FontCharacter;

    if-nez v1, :cond_5

    move-object/from16 v27, v2

    move-object/from16 v18, v6

    move/from16 v19, v11

    move/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v2, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v0, v9, v8, v14}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v18, v6

    move/from16 v19, v11

    move/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v14, v25

    goto :goto_8

    :cond_6
    move-object/from16 v18, v6

    iget-object v6, v1, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/ArrayList;

    move/from16 v19, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v21, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v22, v14

    move/from16 v14, v20

    :goto_7
    if-ge v14, v11, :cond_7

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    check-cast v6, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move/from16 v27, v11

    new-instance v11, Lcom/airbnb/lottie/animation/content/ContentGroup;

    move/from16 v29, v14

    move-object/from16 v14, v25

    invoke-direct {v11, v14, v0, v6, v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v29, 0x1

    move/from16 v11, v27

    move v14, v6

    move-object/from16 v6, v28

    goto :goto_7

    :cond_7
    move-object/from16 v14, v25

    invoke-virtual {v5, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    :goto_8
    move/from16 v6, v20

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_9

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v11

    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    move-object/from16 v27, v2

    move/from16 v2, v20

    invoke-virtual {v11, v13, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget v13, v9, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    neg-float v13, v13

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v25

    mul-float v13, v13, v25

    move-object/from16 v25, v5

    move/from16 v5, v24

    invoke-virtual {v2, v5, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v11, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v2, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v2, :cond_8

    move-object/from16 v13, v26

    invoke-static {v11, v13, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move-object/from16 v2, v23

    invoke-static {v11, v2, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_a

    :cond_8
    move-object/from16 v2, v23

    move-object/from16 v13, v26

    invoke-static {v11, v2, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v11, v13, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v23, v2

    move-object/from16 v26, v13

    move-object/from16 v5, v25

    move-object/from16 v2, v27

    const/16 v20, 0x0

    const/16 v24, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v27, v2

    move-object/from16 v2, v23

    move-object/from16 v13, v26

    iget-wide v5, v1, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    double-to-float v1, v5

    mul-float/2addr v1, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v5

    mul-float/2addr v5, v1

    add-float v5, v5, p4

    const/4 v1, 0x0

    invoke-virtual {v7, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_b
    add-int/lit8 v1, v22, 0x1

    move/from16 v5, p4

    move-object/from16 v23, v2

    move-object/from16 v28, v10

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move/from16 v2, v16

    move-object/from16 v10, v17

    move-object/from16 v6, v18

    move/from16 v11, v19

    move/from16 v13, v21

    const/16 v20, 0x0

    const/16 v24, 0x0

    move v14, v1

    goto/16 :goto_6

    :cond_a
    :goto_c
    move/from16 v16, v2

    move/from16 p4, v5

    move-object/from16 v17, v10

    move/from16 v19, v11

    move/from16 v21, v13

    move-object/from16 v2, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v28

    goto :goto_d

    :cond_b
    move-object/from16 p2, v1

    goto :goto_c

    :goto_d
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v16, 0x1

    move/from16 v5, p4

    move-object/from16 v23, v2

    move-object/from16 v28, v10

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v17

    move/from16 v11, v19

    move/from16 v13, v21

    const/16 v20, 0x0

    const/16 v24, 0x0

    move v2, v1

    move-object/from16 v1, p2

    goto/16 :goto_5

    :cond_c
    move/from16 p4, v5

    move-object/from16 v17, v10

    move/from16 v19, v11

    move/from16 v21, v13

    move-object/from16 v2, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v28

    add-int/lit8 v1, v21, 0x1

    move-object/from16 v10, v17

    const/16 v20, 0x0

    const/16 v24, 0x0

    move v13, v1

    move/from16 v19, v4

    goto/16 :goto_3

    :cond_d
    move-object v8, v7

    goto/16 :goto_21

    :cond_e
    move-object v10, v11

    move-object/from16 v11, v23

    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_f

    move-object/from16 v23, v2

    goto/16 :goto_13

    :cond_f
    iget-object v1, v14, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    if-eqz v1, :cond_12

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    :goto_e
    move-object/from16 v23, v2

    goto/16 :goto_12

    :cond_10
    iget-object v15, v3, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_e

    :cond_11
    const-string v15, "-"

    invoke-static {v12, v15, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_e

    :cond_12
    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/motorola/camera/AppFeatures;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v14, v1, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v14, Landroidx/room/concurrent/FileLock;

    iput-object v12, v14, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    iput-object v10, v14, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    iget-object v15, v1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Typeface;

    if-eqz v23, :cond_13

    move-object/from16 v1, v23

    goto :goto_e

    :cond_13
    iget-object v8, v1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Typeface;

    if-eqz v23, :cond_14

    move-object/from16 v1, v23

    move-object/from16 v23, v2

    goto :goto_f

    :cond_14
    iget-object v7, v3, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_15

    move-object/from16 v23, v2

    move-object v1, v7

    goto :goto_f

    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v23, v2

    const-string v2, "fonts/"

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/AssetManager;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v8, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    const-string v2, "Italic"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v7, "Bold"

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v2, :cond_16

    if-eqz v7, :cond_16

    move/from16 v2, v17

    goto :goto_10

    :cond_16
    if-eqz v2, :cond_17

    move/from16 v2, v18

    goto :goto_10

    :cond_17
    if-eqz v7, :cond_18

    move/from16 v2, v22

    goto :goto_10

    :cond_18
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v7

    if-ne v7, v2, :cond_19

    goto :goto_11

    :cond_19
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_11
    invoke-virtual {v15, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_1a
    move-object/from16 v23, v2

    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_1b

    goto :goto_13

    :cond_1b
    iget-object v1, v3, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    :goto_13
    if-nez v1, :cond_1d

    :cond_1c
    move-object/from16 v8, p1

    goto/16 :goto_21

    :cond_1d
    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_14

    :cond_1e
    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    :goto_14
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    mul-float/2addr v7, v1

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v7, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v7, v7

    div-float v7, v7, v16

    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    :goto_15
    add-float/2addr v7, v8

    goto :goto_16

    :cond_1f
    if-eqz v21, :cond_20

    invoke-virtual/range {v21 .. v21}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_15

    :cond_20
    :goto_16
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v8

    mul-float/2addr v8, v7

    mul-float/2addr v8, v1

    div-float v8, v8, v19

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_17
    if-ge v12, v10, :cond_1c

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_18

    :cond_21
    iget v5, v2, Landroid/graphics/PointF;->x:F

    move v2, v5

    :goto_18
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v9, v15, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    move-object/from16 p2, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    invoke-virtual {v6, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    add-int v17, v17, v1

    move/from16 p4, v17

    move/from16 v17, v1

    move/from16 v1, p4

    move-object/from16 p4, v3

    :goto_1b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_23

    invoke-virtual {v6, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getType(I)I

    move-result v3

    move/from16 v19, v5

    const/16 v5, 0x10

    if-eq v3, v5, :cond_22

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v5, 0x1b

    if-eq v3, v5, :cond_22

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_22

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v5, 0x1c

    if-eq v3, v5, :cond_22

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_22

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v5, 0x13

    if-ne v3, v5, :cond_24

    :cond_22
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int v2, v2, v18

    move/from16 v5, v19

    goto :goto_1b

    :cond_23
    move/from16 v19, v5

    :cond_24
    int-to-long v2, v2

    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v18

    if-ltz v18, :cond_25

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v18, v7

    move/from16 v21, v10

    goto :goto_1d

    :cond_25
    move-object/from16 v18, v7

    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    move/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    move/from16 v10, v17

    :goto_1c
    if-ge v10, v1, :cond_26

    move/from16 v22, v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v10, v1

    move/from16 v1, v22

    goto :goto_1c

    :cond_26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1d
    add-int v2, v14, v17

    move/from16 v3, p3

    invoke-virtual {v0, v9, v3, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-boolean v2, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v2, :cond_27

    invoke-static {v1, v13, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v1, v11, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1e

    :cond_27
    invoke-static {v1, v11, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v1, v13, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1e
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float v2, v2, v19

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v1, v1, v17

    move-object/from16 v3, p4

    move-object/from16 v7, v18

    move/from16 v5, v19

    move/from16 v10, v21

    goto/16 :goto_1a

    :cond_28
    :goto_1f
    move-object/from16 p4, v3

    move/from16 v19, v5

    move-object/from16 v18, v7

    move/from16 v21, v10

    const/4 v5, 0x0

    move/from16 v3, p3

    goto :goto_20

    :cond_29
    move-object/from16 p2, v1

    move/from16 v16, v2

    goto :goto_1f

    :goto_20
    iget-object v1, v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v14, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v7, v18

    move/from16 v5, v19

    move/from16 v10, v21

    goto/16 :goto_19

    :cond_2a
    move-object/from16 v8, p1

    move-object/from16 p4, v3

    move/from16 v19, v5

    move-object/from16 v18, v7

    move/from16 v21, v10

    const/4 v5, 0x0

    move/from16 v3, p3

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p4

    move/from16 v8, v19

    goto/16 :goto_17

    :goto_21
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    return-object p0
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final isIndexInRangeSelection(I)Z
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v1, v2

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    if-lt p1, v3, :cond_2

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_1
    int-to-float p0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    int-to-float p1, v3

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_2

    int-to-float p1, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z
    .locals 6

    iget-object v0, p2, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    mul-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p3, p3

    iget v5, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    mul-float/2addr p3, v5

    mul-float/2addr p3, v2

    add-float/2addr p3, v4

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v2

    iget v2, p2, Lcom/airbnb/lottie/model/DocumentData;->size:F

    add-float/2addr p0, v2

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez v0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    iget p2, p2, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    invoke-static {p2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    return v0

    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    add-float/2addr v3, p0

    div-float/2addr p4, p2

    sub-float/2addr v3, p4

    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return v0

    :cond_5
    add-float/2addr p0, v3

    sub-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return v0

    :cond_6
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return v0
.end method

.method public final splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v7, v5

    move v8, v7

    move v9, v8

    move v11, v9

    move v6, v4

    move v10, v6

    move v12, v10

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eqz p6, :cond_1

    iget-object v14, v2, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    iget-object v15, v2, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v15, v15, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v15, v14}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/FontCharacter;

    if-nez v14, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-wide v14, v14, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    double-to-float v14, v14

    mul-float v14, v14, p4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v15

    mul-float/2addr v15, v14

    add-float v15, v15, p5

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    add-float v15, v14, p5

    :goto_1
    const/16 v14, 0x20

    if-ne v13, v14, :cond_2

    const/4 v9, 0x1

    move v12, v15

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    move v9, v3

    move v11, v5

    move v10, v15

    goto :goto_2

    :cond_3
    add-float/2addr v10, v15

    :goto_2
    add-float/2addr v6, v15

    cmpl-float v16, p2, v4

    if-lez v16, :cond_6

    cmpl-float v16, v6, p2

    if-ltz v16, :cond_6

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    move-result-object v13

    if-ne v11, v8, :cond_5

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v11, v8

    int-to-float v8, v11

    mul-float/2addr v8, v12

    sub-float/2addr v6, v15

    sub-float/2addr v6, v8

    iput-object v10, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    iput v6, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    move v8, v5

    move v11, v8

    move v6, v15

    move v10, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v1, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v8, v15

    int-to-float v8, v8

    mul-float/2addr v8, v12

    sub-float/2addr v6, v10

    sub-float/2addr v6, v8

    sub-float/2addr v6, v12

    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    iput v6, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    move v6, v10

    move v8, v11

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-float v2, v6, v4

    if-lez v2, :cond_8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    move-result-object v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    iput v6, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    :cond_8
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
