.class public final Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $bounds:Landroid/graphics/Rect;

.field public final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $drawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $progress:Lkotlin/jvm/functions/Function0;

.field public final synthetic $setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$bounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$matrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$drawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p5, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$progress:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    iget-object v3, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    int-to-long v8, v6

    const/16 v6, 0x20

    shl-long/2addr v8, v6

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long v7, v8, v10

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/layout/ScaleFactorKt;->access$computeFillMinDimension-iLBOSCw(JJ)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v14, v9

    shl-long v9, v10, v6

    and-long/2addr v14, v12

    or-long/2addr v9, v14

    sget v11, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v11

    sget v14, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    shr-long v14, v9, v6

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    mul-float/2addr v15, v11

    float-to-int v11, v15

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    and-long/2addr v9, v12

    long-to-int v5, v9

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    mul-float/2addr v9, v4

    float-to-int v4, v9

    int-to-long v9, v11

    shl-long/2addr v9, v6

    move/from16 p1, v6

    move-wide v15, v7

    int-to-long v6, v4

    and-long/2addr v6, v12

    or-long/2addr v6, v9

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    shr-long v8, v15, p1

    long-to-int v4, v8

    shr-long v8, v6, p1

    long-to-int v8, v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    and-long v9, v15, v12

    long-to-int v9, v9

    and-long/2addr v6, v12

    long-to-int v6, v6

    sub-int/2addr v9, v6

    int-to-float v6, v9

    div-float/2addr v6, v8

    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v8, 0x0

    if-ne v1, v7, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    :goto_0
    const/4 v7, 0x1

    int-to-float v9, v7

    add-float/2addr v1, v9

    mul-float/2addr v1, v4

    add-float/2addr v9, v8

    mul-float/2addr v9, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v8, v1

    shl-long v8, v8, p1

    int-to-long v10, v4

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    iget-object v1, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    shr-long v10, v8, p1

    long-to-int v4, v10

    int-to-float v4, v4

    and-long/2addr v8, v12

    long-to-int v6, v8

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v4, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$drawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v5, v4, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/google/android/gms/tasks/zzad;

    iget-object v5, v5, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    sget-object v6, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    sget-object v6, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v6, v4, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    sget-object v6, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    iput-object v6, v4, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    iget-object v8, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4, v8}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    iget-object v8, v4, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    const/4 v9, 0x0

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    iput-object v9, v4, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :goto_1
    iget-object v8, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_14

    iget-boolean v8, v4, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    iget-object v8, v4, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v5}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    :cond_4
    :goto_2
    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    iput-boolean v7, v4, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled:Z

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    iget-boolean v8, v4, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    if-eq v7, v8, :cond_6

    iput-boolean v7, v4, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    iget-object v8, v4, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v8, :cond_5

    iput-boolean v7, v8, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    :cond_5
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_6
    iget-boolean v8, v4, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    if-eqz v8, :cond_7

    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_7
    sget-object v8, Lcom/airbnb/lottie/LottieDrawable;->ALLOWED_REDUCED_MOTION_MARKERS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v10, v9

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v11, v10}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v10

    if-eqz v10, :cond_8

    :cond_9
    iget-object v8, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v10, :cond_a

    iget v0, v10, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    invoke-virtual {v4, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    goto :goto_3

    :cond_a
    iget-object v0, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$progress:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v4, v5, v5, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, v4, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v8, v4, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v10, v4, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    iget-object v11, v4, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v12, v4, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v11, :cond_13

    if-nez v12, :cond_b

    goto/16 :goto_9

    :cond_b
    iget-object v12, v4, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    if-eqz v12, :cond_c

    move-object v6, v12

    :cond_c
    sget-object v12, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    if-ne v6, v12, :cond_d

    goto :goto_4

    :cond_d
    move v7, v5

    :goto_4
    if-eqz v7, :cond_e

    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v8}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_5
    iget-boolean v6, v4, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_10

    :try_start_1
    iget v6, v4, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    iget-boolean v12, v4, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v12, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v0, v11}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_f
    invoke-virtual {v11, v0, v1, v6, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    :try_start_2
    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_10
    iget v6, v4, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    iget-boolean v12, v4, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v12, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v0, v11}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_11
    invoke-virtual {v11, v0, v1, v6, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    :goto_6
    iput-boolean v5, v4, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_13

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    iget v0, v11, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    invoke-virtual {v8}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    :goto_7
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    :goto_8
    if-eqz v7, :cond_12

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    iget v1, v11, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    invoke-virtual {v8}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v4

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_12

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    throw v0

    :catch_0
    if-eqz v7, :cond_13

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    iget v0, v11, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    invoke-virtual {v8}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method
