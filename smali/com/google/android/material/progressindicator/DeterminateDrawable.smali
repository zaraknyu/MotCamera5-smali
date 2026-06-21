.class public final Lcom/google/android/material/progressindicator/DeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "SourceFile"


# static fields
.field public static final INDICATOR_LENGTH_IN_LEVEL:Lcom/google/android/material/progressindicator/DeterminateDrawable$1;


# instance fields
.field public final activeIndicator:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

.field public final drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

.field public skipAnimationOnLevelChange:Z

.field public final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final springForce:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->INDICATOR_LENGTH_IN_LEVEL:Lcom/google/android/material/progressindicator/DeterminateDrawable$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/CircularDrawingDelegate;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    iput-object p3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    new-instance p2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->activeIndicator:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p3, 0x3f800000    # 1.0f

    float-to-double v0, p3

    iput-wide v0, p2, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iput-boolean p1, p2, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const/high16 v0, 0x42480000    # 50.0f

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p2, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iput-boolean p1, p2, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Lcom/google/android/material/progressindicator/DeterminateDrawable;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p2, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    iput p3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    move-result v6

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v11

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v8, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v11

    :goto_3
    iget-object v3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget-object v5, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v2, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v2, v11

    iget-object v12, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->activeIndicator:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iput v2, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    iget v2, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorTrackGapSize:I

    if-lez v2, :cond_7

    int-to-float v2, v2

    iget v6, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    const/4 v3, 0x0

    cmpg-float v4, v6, v3

    const v7, 0x3c23d70a    # 0.01f

    if-gez v4, :cond_5

    goto :goto_4

    :cond_5
    cmpl-float v3, v6, v7

    if-lez v3, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    move v3, v6

    :goto_4
    mul-float/2addr v3, v2

    div-float/2addr v3, v7

    float-to-int v9, v3

    iget v2, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    iget v3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    iget-object v4, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v8

    const/high16 v7, 0x3f800000    # 1.0f

    move v10, v9

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_5

    :cond_7
    iget v2, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    iget v3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    iget-object v4, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v10, v9

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_5
    iget v2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    iget-object v3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    invoke-static {v4, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v8

    iget v6, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget v7, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    iget-object v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v1, v11

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_6
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result p0

    return p0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->activeIndicator:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iput v0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->activeIndicator:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    const v2, 0x461c4000    # 10000.0f

    iget-object v3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v4

    :cond_0
    iget p0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    mul-float/2addr p0, v2

    iput p0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    int-to-float p0, p1

    iget-boolean p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz p1, :cond_1

    iput p0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    return v4

    :cond_1
    iget-object p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez p1, :cond_2

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :cond_2
    iget-object p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    float-to-double v0, p0

    iput-wide v0, p1, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float p0, v0

    float-to-double v0, p0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v5, p0

    cmpl-double v5, v0, v5

    if-gtz v5, :cond_b

    const v5, -0x800001

    float-to-double v6, v5

    cmpg-double v0, v0, v6

    if-ltz v0, :cond_a

    iget v0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p1, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v6, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v6

    iput-wide v0, p1, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iget-boolean p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-nez p1, :cond_8

    if-nez p1, :cond_8

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    iget-boolean p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    if-nez p1, :cond_3

    iget-object p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lcom/google/android/material/progressindicator/DeterminateDrawable$1;

    iget-object v0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->activeIndicator:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget p1, p1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    mul-float/2addr p1, v2

    iput p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    :cond_3
    iget p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_7

    cmpg-float p0, p1, v5

    if-ltz p0, :cond_7

    sget-object p0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/core/view/MenuHostHelper;

    if-nez v0, :cond_5

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/google/android/gms/tasks/zzad;

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Lcom/google/android/gms/tasks/zzad;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/core/view/MenuHostHelper;

    :cond_5
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/core/view/MenuHostHelper;

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroidx/databinding/ViewDataBinding$8;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Starting value need to be in between min value and max value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return v4

    :cond_9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations may only be started on the main thread"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setVisibleInternal(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object p3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "animator_duration_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    return p1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v1, p2

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float p2, v1, p3

    if-lez p2, :cond_1

    float-to-double p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    iput-wide p2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
