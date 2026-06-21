.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public bitmap:Landroidx/lifecycle/LiveData;

.field public final bitmapObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

.field public final filterCard:Landroidx/cardview/widget/CardView;

.field public final filterFrame:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final imageView:Landroid/widget/ImageView;

.field public index:Ljava/lang/Integer;

.field public final newFilterBg:Landroid/widget/ImageView;

.field public final newFilters:[Ljava/lang/String;

.field public selected:Landroidx/lifecycle/MutableLiveData;

.field public final selectedObserver:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->bitmapObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->newFilters:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->newFilters:[Ljava/lang/String;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->selectedObserver:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;

    const v0, 0x7f0a01c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->newFilterBg:Landroid/widget/ImageView;

    const v0, 0x7f0a01c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->filterFrame:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a01bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->filterCard:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public final changeCardSize(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->filterCard:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070165

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070164

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    :cond_2
    return-void
.end method
