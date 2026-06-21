.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $alignment:Landroidx/compose/ui/BiasAlignment;

.field public final synthetic $isLargeFoldableSplit:Z

.field public final synthetic $this_AnimatedVisibility:Landroidx/compose/animation/AnimatedVisibilityScope;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/BiasAlignment;ZLcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;Landroidx/compose/animation/AnimatedVisibilityScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->$alignment:Landroidx/compose/ui/BiasAlignment;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->$isLargeFoldableSplit:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->$this_AnimatedVisibility:Landroidx/compose/animation/AnimatedVisibilityScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->$alignment:Landroidx/compose/ui/BiasAlignment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v4, p1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p1, p2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, v2, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {v4, p1, v4, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_4
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, p2, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->$isLargeFoldableSplit:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$Draw$1$1;->$this_AnimatedVisibility:Landroidx/compose/animation/AnimatedVisibilityScope;

    if-eqz p2, :cond_5

    const p2, 0xd29956c

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, p0, v1, p1, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelComposeSplit(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result p2

    if-nez p2, :cond_6

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p2, :cond_6

    const p2, 0xd2b9587

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, p0, v1, p1, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelComposeFullScreen(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_6
    const p2, 0xd2d0091

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, p0, v1, p1, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->ControlPanelCompose(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
