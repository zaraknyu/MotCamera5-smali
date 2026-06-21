.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    iget p3, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    const/high16 v0, 0x40000000    # 2.0f

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    packed-switch p3, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    if-gt p2, p3, :cond_3

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    sub-int/2addr v4, v2

    int-to-float v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotY(F)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    if-eq p2, p3, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->ctaDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    if-nez p3, :cond_4

    sget-boolean p3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object v0, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0, p3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object p3, p3, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getStartTrailCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->ctaDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    :cond_4
    new-instance p3, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p3, p2, v0, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    new-instance p3, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p3, p2, v0, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    new-instance p3, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p3, p2, v0, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :pswitch_3
    check-cast p0, Landroidx/recyclerview/widget/FastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_8

    if-lt v2, p3, :cond_8

    move v3, v4

    goto :goto_4

    :cond_8
    move v3, v5

    :goto_4
    iput-boolean v3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v7, v3, v6

    if-lez v7, :cond_9

    if-lt v6, p3, :cond_9

    move p3, v4

    goto :goto_5

    :cond_9
    move p3, v5

    :goto_5
    iput-boolean p3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v7, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v7, :cond_a

    if-nez p3, :cond_a

    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_e

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    int-to-float p1, p1

    int-to-float p3, v2

    div-float v5, p3, v0

    add-float/2addr v5, p1

    mul-float/2addr v5, p3

    int-to-float p1, v1

    div-float/2addr v5, p1

    float-to-int p1, v5

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    mul-int p1, v2, v2

    div-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    :cond_b
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p1, :cond_c

    int-to-float p1, p2

    int-to-float p2, v6

    div-float p3, p2, v0

    add-float/2addr p3, p1

    mul-float/2addr p3, p2

    int-to-float p1, v3

    div-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v6, v6

    div-int/2addr p1, v3

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    :cond_c
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_d

    if-ne p1, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    :cond_e
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
