.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final controlPanelToggleLayout$delegate:Ljava/lang/Object;

.field public final itemOptionsToggleView$delegate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->controlPanelToggleLayout$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->itemOptionsToggleView$delegate:Ljava/lang/Object;

    return-void
.end method
