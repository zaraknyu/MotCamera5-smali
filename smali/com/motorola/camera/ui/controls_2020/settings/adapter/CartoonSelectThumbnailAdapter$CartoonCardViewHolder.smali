.class public final Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final imageView:Landroid/widget/ImageView;

.field public final lottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final radioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->lottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-void
.end method
