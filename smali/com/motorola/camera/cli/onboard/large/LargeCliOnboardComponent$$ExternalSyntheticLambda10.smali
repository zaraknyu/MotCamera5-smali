.class public final synthetic Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object v1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$2:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ControlBarItems(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    check-cast v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object v1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda10;->f$2:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->ClickableOverlay(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
