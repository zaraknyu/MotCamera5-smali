.class public final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mLayoutManager:Ljava/lang/Object;

.field public mPageTransformer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    return-void
.end method

.method private final onPageScrollStateChanged$androidx$viewpager2$widget$PageTransformerAdapter(I)V
    .locals 0

    return-void
.end method

.method private final onPageSelected$androidx$viewpager2$widget$PageTransformerAdapter(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    iget v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    return-void

    :pswitch_0
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    neg-float p2, p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    add-float/2addr v2, p2

    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    invoke-interface {v3, v1, v2}, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;->transformPage(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const-string p2, "/"

    const-string p3, " while transforming pages"

    const-string v1, "LayoutManager returned a null child at pos "

    invoke-static {v0, p1, v1, p2, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;

    iget-object p0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->updateControl(II)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
