.class public final Landroidx/transition/ViewUtils$1;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/view/View;

    const/4 p0, 0x0

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    check-cast p1, Landroid/view/View;

    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    const/4 p0, 0x0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    const/4 p0, 0x0

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p2, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    cmpl-float p2, p2, p0

    if-eqz p2, :cond_0

    iput p0, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    const p2, 0x45a8c000    # 5400.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    iget-object p2, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    iget-object v1, p1, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    const/high16 v3, 0x44be0000    # 1520.0f

    iget v4, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    mul-float/2addr v4, v3

    const/high16 v3, -0x3e600000    # -20.0f

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iput v4, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    move v3, v0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    aget v4, v4, v3

    sub-int v4, p0, v4

    int-to-float v4, v4

    const/16 v5, 0x29b

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v6, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    invoke-virtual {p2, v4}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    iput v4, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    sget-object v4, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    aget v4, v4, v3

    sub-int v4, p0, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v5, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    invoke-virtual {p2, v4}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v5

    iput v4, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget v5, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    sub-float v6, v5, v3

    iget v7, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v6, v3

    iput v6, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    div-float/2addr v5, v3

    iput v5, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    sget-object v3, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    aget v3, v3, v2

    sub-int v3, p0, v3

    int-to-float v3, v3

    const/16 v5, 0x14d

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2

    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr v2, p0

    iget-object p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorColors:[I

    array-length v4, p0

    rem-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    array-length v5, p0

    rem-int/2addr v4, v5

    aget v2, p0, v2

    aget p0, p0, v4

    invoke-virtual {p2, v3}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shr-int/lit8 v6, p0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v3

    shr-int/lit8 v7, p0, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v3

    shr-int/lit8 v8, p0, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v3

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-double v9, v4

    const-wide v11, 0x400199999999999aL    # 2.2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v4, v9

    float-to-double v9, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v5, v9

    float-to-double v9, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v1, v9

    float-to-double v9, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v7, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v9, p0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float p0, v9

    invoke-static {v6, v2, p2, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    invoke-static {v7, v4, p2, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    invoke-static {v8, v5, p2, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    invoke-static {p0, v1, p2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    mul-float/2addr v2, v3

    float-to-double v6, v4

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p2, v6

    mul-float/2addr p2, v3

    float-to-double v4, v5

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v3

    float-to-double v4, p0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p0, v4

    mul-float/2addr p0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    or-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    :goto_2
    iget-object p0, p1, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    sget-object v2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sget-object v2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_5
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sget-object v2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_6
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    if-ne v1, p2, :cond_4

    iget-object p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    sget-object v4, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p2, v1, v2, v3, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    :cond_4
    return-void

    :pswitch_7
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne p2, v1, :cond_5

    iget-object p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    sget-object v4, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p2, v1, p0, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    :cond_5
    return-void

    :pswitch_8
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void

    :pswitch_9
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
