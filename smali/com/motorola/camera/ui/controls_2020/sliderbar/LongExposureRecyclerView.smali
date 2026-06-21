.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/CtaPermissionHelper$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/motorola/camera/CtaPermissionHelper$Listener;",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public ctaDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

.field public disableScroll:Z

.field public isDragging:Z

.field public paddingSet:Z

.field public preState:I

.field public registered:Z

.field public final scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

.field public final snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    const/4 p2, -0x1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->preState:I

    new-instance p2, Landroidx/recyclerview/widget/FastScroller$2;

    const/4 v1, 0x3

    invoke-direct {p2, v1, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>(I)V

    const/16 p2, 0x168

    int-to-float p2, p2

    const/4 v1, 0x0

    sub-float/2addr p2, v1

    cmpg-float v2, p2, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_0

    add-float/2addr p2, v3

    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    sub-float/2addr p2, v3

    :cond_1
    add-float/2addr v1, p2

    iput v1, p1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0701c7

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public final onCtaDialogClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/CtaPrivacyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.Camera"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onCtaDialogNegativeButtonClick(I)V
    .locals 0

    return-void
.end method

.method public final onCtaDialogPositiveButtonClick(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.motorola.camera.Camera"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/PermissionsManager;->requestPermission(Lcom/motorola/camera/Camera;I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->paddingSet:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->paddingSet:Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p1, v0, v0, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-direct {p2, v1, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {p1, p2}, [Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->preState:I

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->isDragging:Z

    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->isDragging:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->isDragging:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->isDragging:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->disableScroll:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->registered:Z

    :cond_4
    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->preState:I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
