.class public final Landroidx/recyclerview/widget/SnapHelper$2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    invoke-static {p4, p3, p0, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p3

    sub-int/2addr p2, p1

    div-int/2addr p2, p0

    :goto_0
    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    return p3

    :pswitch_1
    const/4 p0, 0x2

    invoke-static {p4, p3, p0, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p3

    sub-int/2addr p2, p1

    div-int/2addr p2, p0

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x2

    invoke-static {p4, p3, p0, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p3

    sub-int/2addr p2, p1

    div-int/2addr p2, p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-float p0, p0

    const/high16 p1, 0x435c0000    # 220.0f

    :goto_1
    div-float/2addr p1, p0

    return p1

    :pswitch_0
    if-eqz p1, :cond_1

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    :goto_2
    int-to-float p0, p0

    const/high16 p1, 0x43160000    # 150.0f

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_1

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_2

    :pswitch_2
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_3
    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_1

    :pswitch_3
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public calculateTimeForScrolling(I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->preState:I

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->preState:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    return-void

    :pswitch_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->disableScroll:Z

    :cond_0
    return-void

    :pswitch_1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz p0, :cond_1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    :cond_1
    return-void

    :pswitch_2
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->disableScroll:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SnapHelper$2;->calculateTimeForScrolling(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_0

    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput v2, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_2

    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput v2, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
