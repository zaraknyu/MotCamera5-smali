.class public final Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;",
        "Landroid/widget/FrameLayout;",
        "Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;",
        "pager",
        "Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;",
        "getPager",
        "()Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;",
        "setPager",
        "(Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;)V",
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
.field public final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public final dotsLayout:Landroid/widget/LinearLayout;

.field public final indicatorColor:I

.field public final indicatorCornerRadius:F

.field public final indicatorSelectedColor:I

.field public final indicatorSize:F

.field public final indicatorSpacing:F

.field public final indicatorWidthFactor:F

.field public final indicators:Ljava/util/ArrayList;

.field public pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->dotsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/motorola/camera/R$styleable;->PagerIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorColor:I

    const/4 p2, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSize:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorCornerRadius:F

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSpacing:F

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSelectedColor:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorWidthFactor:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final attachTo(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 4

    const-string/jumbo v0, "viewPager2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/zxing/Result;

    invoke-direct {v1, p1, v0}, Lcom/google/zxing/Result;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->setPager(Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->updateIndicators()V

    return-void
.end method

.method public final getPager()Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->updateIndicators()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->updateIndicators()V

    return-void
.end method

.method public final setPager(Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    return-void
.end method

.method public final updateIndicatorColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/google/zxing/Result;

    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    if-ne p1, v2, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSelectedColor:I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorColor:I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateIndicators()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    check-cast v0, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSize:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->dotsLayout:Landroid/widget/LinearLayout;

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v5

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0d00ca

    invoke-virtual {v3, v7, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0a025a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    float-to-int v9, v4

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSpacing:F

    float-to-int v9, v9

    invoke-virtual {v8, v9, v5, v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorCornerRadius:F

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->updateIndicatorColor(I)V

    move v2, v6

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/google/zxing/Result;

    iget-object v1, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v0, v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/OffsetApplier;-><init>(Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    if-eqz v1, :cond_7

    check-cast v1, Lcom/google/zxing/Result;

    new-instance v2, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->pager:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    if-eqz p0, :cond_8

    check-cast p0, Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v5

    :cond_8
    const/4 p0, 0x0

    invoke-virtual {v0, p0, v5}, Landroidx/compose/runtime/OffsetApplier;->onPageScrolled(FI)V

    :cond_9
    return-void
.end method
