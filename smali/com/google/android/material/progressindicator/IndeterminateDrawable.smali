.class public final Lcom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "SourceFile"


# instance fields
.field public animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

.field public drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

.field public staticDummyDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "animator_duration_scale"

    invoke-static {v1, v3, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iget-object v3, v10, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorColors:[I

    aget v3, v3, v9

    invoke-virtual {v1, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ObjectAnimator;

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v9

    :goto_1
    iget-object v6, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v8

    :goto_2
    move-object v2, p1

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v9

    goto :goto_2

    :goto_4
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    iget v11, v10, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorTrackGapSize:I

    iget v12, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    iget-object v3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    if-nez v11, :cond_6

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    iget v2, v10, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v12}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v8, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v1, v1, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v2, v2, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v8, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    iget v2, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v1, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    add-float v5, v1, v7

    iget v1, v10, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v9}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    move v8, v11

    move-object v1, v4

    move v7, v11

    move v4, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    move v12, v9

    :goto_5
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v1, v1, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v1, v1, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    iget v2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v13, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    invoke-static {v4, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    iget v4, v13, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget v5, v13, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    if-lez v9, :cond_7

    if-lez v11, :cond_7

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v1, v1, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    iget v4, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v5, v13, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget v1, v10, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v12}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    move v8, v11

    move-object v1, v2

    move v7, v11

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_6

    :cond_7
    move v7, v11

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move v11, v7

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_7
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result p0

    return p0
.end method

.method public final setVisibleInternal(ZZZ)Z
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object p2, p2, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->startAnimator()V

    :cond_3
    :goto_0
    return v0
.end method
