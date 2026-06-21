.class public final synthetic Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;ILcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput v1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    check-cast p1, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
