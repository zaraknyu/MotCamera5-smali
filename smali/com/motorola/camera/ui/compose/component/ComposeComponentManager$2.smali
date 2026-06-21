.class public final Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;->this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;->this$0:Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/motorola/camera/ui/compose/DimensionsKt;->DimensionsFoldableSplit:Lcom/motorola/camera/ui/compose/Dimensions;

    goto :goto_1

    :cond_2
    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->_onPositionChangedFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isDualPaneScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/motorola/camera/ui/compose/DimensionsKt;->DimensionsFoldableFull:Lcom/motorola/camera/ui/compose/Dimensions;

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/motorola/camera/ui/compose/Dimensions;

    invoke-direct {p2}, Lcom/motorola/camera/ui/compose/Dimensions;-><init>()V

    :goto_1
    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    new-instance v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;I)V

    const p0, 0x43f4d99b    # 489.70004f

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    return-object v1

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-ne p2, v2, :cond_5

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const p2, 0x2a77d14a

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->_onPositionChangedFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->DualPane(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->TopLayer(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_6
    const p2, 0x2a794cad

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->_onPositionChangedFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->MainPane(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    return-object v1

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-ne p2, v2, :cond_8

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_8
    :goto_5
    new-instance p2, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;I)V

    const p0, -0x609b2b25

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/ui/compose/ThemeKt;->CameraTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
