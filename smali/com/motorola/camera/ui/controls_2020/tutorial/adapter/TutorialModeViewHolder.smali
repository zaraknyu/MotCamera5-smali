.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final itemBackground:Landroid/widget/ImageView;

.field public final itemCard:Landroidx/cardview/widget/CardView;

.field public final itemComparison:Landroid/widget/LinearLayout;

.field public final itemContent:Landroid/widget/TextView;

.field public final itemIcon:Landroid/widget/ImageView;

.field public final itemTitle:Landroid/widget/TextView;

.field public final itemVideo:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a04ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemBackground:Landroid/widget/ImageView;

    const v0, 0x7f0a04b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a04b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a04af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemContent:Landroid/widget/TextView;

    const v0, 0x7f0a04a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemComparison:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemCard:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a04b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemVideo:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    return-void
.end method
