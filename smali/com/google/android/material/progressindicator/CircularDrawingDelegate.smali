.class public final Lcom/google/android/material/progressindicator/CircularDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "SourceFile"


# instance fields
.field public adjustedRadius:F

.field public displayedCornerRadius:F

.field public displayedTrackThickness:F

.field public totalTrackLengthFraction:F

.field public useStrokeCap:Z


# virtual methods
.method public final drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 12

    cmpl-float v1, p4, p3

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    sub-float v1, p4, p3

    goto :goto_0

    :cond_0
    add-float v1, p4, v2

    sub-float/2addr v1, p3

    :goto_0
    rem-float v3, p3, v2

    iget v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    add-float v8, v3, v1

    cmpl-float v4, v8, v2

    if-lez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move/from16 v7, p7

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    return-void

    :cond_1
    iget v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v6, 0x0

    cmpl-float v4, v3, v6

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v9, 0x40000000    # 2.0f

    if-nez v4, :cond_2

    const v4, 0x3f7d70a4    # 0.99f

    cmpl-float v10, v1, v4

    if-ltz v10, :cond_2

    sub-float v4, v1, v4

    mul-float v10, v7, v9

    div-float/2addr v10, v8

    mul-float/2addr v10, v4

    const v4, 0x3c23d70a    # 0.01f

    div-float/2addr v10, v4

    add-float/2addr v1, v10

    :cond_2
    iget v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    sub-float v4, v2, v4

    invoke-static {v4, v2, v3}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v2

    iget v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    invoke-static {v6, v3, v1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    move/from16 v3, p6

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v4, p7

    int-to-float v4, v4

    iget v10, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float/2addr v4, v10

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v1, v8

    sub-float/2addr v1, v3

    sub-float v10, v1, v4

    mul-float/2addr v2, v8

    add-float v8, v2, v3

    cmpg-float v1, v10, v6

    if-gtz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v1, p5

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v1, v7, v9

    cmpg-float v2, v10, v1

    if-gez v2, :cond_4

    div-float v6, v10, v1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float/2addr v7, v6

    add-float v3, v7, v8

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    mul-float v4, v1, v9

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    return-void

    :cond_4
    move v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v4, v3

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->useStrokeCap:Z

    if-eqz v3, :cond_5

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_1
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    add-float v3, v8, v7

    sub-float v0, v10, v0

    const/4 v4, 0x0

    move-object v5, p2

    move v2, v3

    move v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v3, v2

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->useStrokeCap:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    mul-float v4, v0, v9

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    add-float/2addr v8, v10

    sub-float v3, v8, v7

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    mul-float v4, v1, v9

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V
    .locals 6

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    float-to-int p5, p5

    int-to-float p5, p5

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    mul-float/2addr v0, p5

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p4, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, p5

    div-float/2addr v4, v1

    neg-float p4, p4

    div-float/2addr p4, v1

    div-float/2addr p5, v1

    invoke-direct {v3, v4, p4, p5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    float-to-double p4, p4

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, p4

    double-to-float p4, v4

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    float-to-double v4, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-float p0, v1

    invoke-virtual {p1, p4, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getSize()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method
