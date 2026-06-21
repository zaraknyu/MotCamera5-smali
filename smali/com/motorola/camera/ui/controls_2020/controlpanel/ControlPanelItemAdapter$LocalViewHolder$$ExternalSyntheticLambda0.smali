.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a010e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
