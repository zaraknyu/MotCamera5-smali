.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;ZLcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;->f$1:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget p0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    check-cast p0, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
