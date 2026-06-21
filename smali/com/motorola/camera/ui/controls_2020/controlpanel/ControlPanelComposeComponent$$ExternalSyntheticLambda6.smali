.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;II)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$2:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelGrid(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$2:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda6;->f$1:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelGrid(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
