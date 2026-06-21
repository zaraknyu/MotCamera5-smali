.class public abstract Lcom/google/android/material/progressindicator/DrawingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public spec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;


# virtual methods
.method public final validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    check-cast p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-float v5, v3, v0

    mul-float v6, v3, v1

    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr v6, p2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget p2, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    neg-float p2, v3

    invoke-virtual {p1, p2, p2, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget p1, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 p2, p1, 0x2

    iget v1, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackCornerRadius:I

    const/4 v3, 0x1

    if-gt p2, v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->useStrokeCap:Z

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    iget p1, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget p2, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    if-nez p4, :cond_2

    if-eqz p5, :cond_8

    :cond_2
    const/4 v1, 0x2

    if-eqz p4, :cond_3

    iget v5, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq v5, v1, :cond_4

    :cond_3
    if-eqz p5, :cond_5

    iget v5, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne v5, v3, :cond_5

    :cond_4
    sub-float p4, v0, p3

    int-to-float p2, p2

    mul-float/2addr p4, p2

    div-float/2addr p4, v4

    add-float/2addr p4, p1

    iput p4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    iget p4, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq p4, v3, :cond_7

    :cond_6
    if-eqz p5, :cond_8

    iget p4, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p4, v1, :cond_8

    :cond_7
    sub-float p4, v0, p3

    int-to-float p2, p2

    mul-float/2addr p4, p2

    div-float/2addr p4, v4

    sub-float/2addr p1, p4

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    :cond_8
    :goto_1
    if-eqz p5, :cond_9

    iget p1, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    iput p3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    return-void

    :cond_9
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    return-void
.end method
