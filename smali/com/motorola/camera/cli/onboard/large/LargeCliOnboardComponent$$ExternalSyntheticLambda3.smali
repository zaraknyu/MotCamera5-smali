.class public final synthetic Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;III)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iput p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$2:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->AnimatedControlBar(ILandroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    check-cast v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$2:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->OnboardItem(ILandroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
