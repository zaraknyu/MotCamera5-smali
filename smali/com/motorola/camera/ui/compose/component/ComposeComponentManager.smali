.class public final Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final _onPositionChangedFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public static final onPositionChangedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# instance fields
.field public final components:Ljava/util/ArrayList;

.field public final composeView:Landroidx/compose/ui/platform/ComposeView;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final isDualPaneScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final mainPane:Ljava/util/ArrayList;

.field public final showSupportingPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final supportingPane:Ljava/util/ArrayList;

.field public final topLayer:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->_onPositionChangedFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    sput-object v1, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->onPositionChangedFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    check-cast p1, Landroidx/compose/ui/platform/ComposeView;

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->composeView:Landroidx/compose/ui/platform/ComposeView;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    const/4 v3, 0x2

    invoke-direct {v2, p1, p2, v3}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;I)V

    new-instance v3, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    const/4 v10, 0x0

    invoke-direct {v3, p1, p2, v10}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;I)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    invoke-direct {v4, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-direct {v5, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    new-instance v6, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    const/4 v11, 0x1

    invoke-direct {v6, p1, p2, v11}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;I)V

    new-instance v7, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;

    invoke-direct {v7, p1, p2}, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    new-instance v8, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    const/4 v9, 0x3

    invoke-direct {v8, p1, p2, v9}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;I)V

    new-instance v9, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;

    invoke-direct {v9, p1, p2}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    filled-new-array/range {v2 .. v9}, [Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->getShouldLoad()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getFeatureComponentProviders()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/IComponentProvider;

    invoke-interface {v4, p1, p2}, Lcom/motorola/camera/ui/IComponentProvider;->getComposeComponent(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->mainPane:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    invoke-direct {v1, p1, p2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->supportingPane:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenViewModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iput-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->topLayer:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    sget-object v1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Landroidx/compose/ui/platform/InvertMatrixKt;->getMain()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isDualPaneScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->showSupportingPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->mainPane:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->supportingPane:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/UIManager;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->showSupportingPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->dualPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->composeView:Landroidx/compose/ui/platform/ComposeView;

    new-instance p2, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;

    invoke-direct {p2, p0, v10}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$2;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x30f47974

    invoke-direct {p0, p2, v11, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final DualPane(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const v4, -0x3df430

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v1

    and-int/lit8 v6, v4, 0x3

    if-ne v6, v5, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Left:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v8, 0x6

    invoke-static {v6, v7, v2, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget v7, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v2, v5}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_3

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v6, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v11, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    invoke-static {v7, v2, v7, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v5, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v5, -0x309d05d4

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v5, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isDualPaneScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v11, 0x0

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v5, :cond_9

    invoke-static {v13}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    iget v15, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v5}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_6

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    invoke-static {v2, v14, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v11, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v11, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    invoke-static {v15, v2, v15, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    invoke-static {v2, v5, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v5, v4, 0xe

    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->SupportingPane(ILandroidx/compose/runtime/ComposerImpl;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    move v5, v11

    :goto_4
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v13}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v5, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v2, v11}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_a

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    invoke-static {v2, v3, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v12, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    invoke-static {v5, v2, v5, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_c
    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v3, v4, 0xe

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->MainPane(ILandroidx/compose/runtime/ComposerImpl;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v3, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public final MainPane(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 7

    const v0, -0x11970d4d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_2
    :goto_1
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v3, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_3

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v1, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-static {v3, p2, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x42959dc0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->mainPane:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    const v3, 0x4295a0d8

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->isVisibilityHandled()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {v1, v2, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->Draw(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_7
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final SupportingPane(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v8, p2

    const v2, 0x1ccbe979

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    const/4 v10, 0x3

    and-int/2addr v2, v10

    if-ne v2, v3, :cond_2

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_2
    :goto_1
    const v2, 0x6e3c21fe

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v4, :cond_3

    new-instance v3, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v5}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v3, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Landroidx/compose/animation/core/MutableTransitionState;

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v6, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->showSupportingPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v7, v3, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/16 v6, 0x96

    const/4 v7, 0x0

    const/4 v9, 0x6

    invoke-static {v6, v5, v7, v9}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_4

    new-instance v11, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v12, 0xf

    invoke-direct {v11, v12}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v12, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance v12, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;

    invoke-direct {v12, v11, v5}, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v11, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance v13, Landroidx/compose/animation/TransitionData;

    new-instance v15, Landroidx/compose/animation/Slide;

    invoke-direct {v15, v12, v6}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/TweenSpec;)V

    const/16 v18, 0x0

    const/16 v19, 0x3d

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v11, v13}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    invoke-static {v7, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    const/16 v11, 0xc8

    invoke-static {v11, v5, v7, v9}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    new-instance v2, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v4, 0x10

    invoke-direct {v2, v4}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v4, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;

    const/4 v11, 0x1

    invoke-direct {v4, v2, v11}, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v2, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v11, Landroidx/compose/animation/TransitionData;

    new-instance v13, Landroidx/compose/animation/Slide;

    invoke-direct {v13, v4, v9}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/TweenSpec;)V

    const/16 v16, 0x0

    const/16 v17, 0x3d

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v17}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v2, v11}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    invoke-static {v7, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;

    invoke-direct {v4, v5, v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$SupportingPane$3;-><init>(ILjava/lang/Object;)V

    const v5, -0x416cc7af

    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const/high16 v9, 0x30000

    move-object v5, v2

    move-object v2, v3

    const/4 v3, 0x0

    move-object v4, v6

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v10}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public final TopLayer(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 7

    const v0, 0x77a73bd8

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_2
    :goto_1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget v2, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_3

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v0, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v3, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v3, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-static {v2, p2, v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x756631a5

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->topLayer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    const v3, 0x756634bd

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->isVisibilityHandled()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {v2, v1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->Draw(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_7
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final hasFocus()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->onWindowHasFocus()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->onConfigurationChanged(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onFoldScreenOrientationChanged(IIIZ)V
    .locals 1

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->onConfigurationChanged(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, p3

    :goto_1
    iget-object p4, p4, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->landScape$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->onConfigurationChanged(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->isDualPaneScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->showSupportingPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->dualPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final pause()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->rotate(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Landroidx/compose/ui/platform/InvertMatrixKt;->getMain()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/component/ComposeComponent;

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v4, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$startListeningToComposablePositions$1$1;

    invoke-direct {v4, v2, p1, v1}, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager$startListeningToComposablePositions$1$1;-><init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v3, v1, v1, v4, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponentManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    :cond_2
    return-void
.end method
