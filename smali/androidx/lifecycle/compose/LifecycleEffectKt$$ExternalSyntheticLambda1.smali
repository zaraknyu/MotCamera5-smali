.class public final synthetic Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p5, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelComposeSplit(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelComposeFullScreen(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelCompose(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleEventEffect(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
