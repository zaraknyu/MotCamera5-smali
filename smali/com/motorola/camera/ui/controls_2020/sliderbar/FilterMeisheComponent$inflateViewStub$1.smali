.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# instance fields
.field public final synthetic $meisheAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic $r8$classId:I

.field public oldX:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->$meisheAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->$meisheAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    if-ltz p1, :cond_4

    iget-object v2, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->selectedMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->recyclerView:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    if-eqz v2, :cond_3

    iput-boolean v1, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->disableScroll:Z

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/SnapHelper$2;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v3, v5}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput p1, v4, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    :cond_3
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->setSelectedMode$1(I)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->seekSlider:Landroid/widget/SeekBar;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeedIndex()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    :cond_5
    const/4 p0, 0x0

    return p0

    :pswitch_0
    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->$meisheAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    if-ltz p1, :cond_c

    iget-object v3, p2, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->selectedLayout:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-eqz v3, :cond_9

    iput-boolean v2, v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->disableScroll:Z

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroidx/recyclerview/widget/SnapHelper$2;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v4, v6}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput p1, v5, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    :cond_9
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->setSelectedLayout(I)V

    iget-object p2, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_a
    if-nez p1, :cond_b

    move v2, v1

    :cond_b
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_c
    :goto_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    :cond_d
    return v1

    :pswitch_1
    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->$meisheAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->onItemSelected(I)V

    :cond_f
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$1;->oldX:F

    :cond_10
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
