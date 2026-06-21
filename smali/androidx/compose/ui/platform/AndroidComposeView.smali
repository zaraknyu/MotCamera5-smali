.class public final Landroidx/compose/ui/platform/AndroidComposeView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/Owner;
.implements Landroidx/compose/ui/node/RootForTest;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field public static getBooleanMethod:Ljava/lang/reflect/Method;

.field public static systemPropertiesClass:Ljava/lang/Class;


# instance fields
.field public _androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

.field public final _autofill:Landroidx/work/WorkQuery;

.field public final _autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

.field public final _inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

.field public final _viewTreeOwners$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final _windowInfo:Lcom/google/android/gms/tasks/zzad;

.field public final accessibilityManager:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

.field public final autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

.field public final canvasHolder:Lcom/google/android/gms/tasks/zzad;

.field public final clipboard:Landroidx/compose/ui/platform/AndroidClipboard;

.field public final clipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

.field public final composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

.field public configurationChangeObserver:Lkotlin/jvm/functions/Function1;

.field public contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

.field public coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public currentFontWeightAdjustment:I

.field public final density$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final dirtyLayers:Ljava/util/ArrayList;

.field public final dragAndDropManager:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

.field public final endApplyChangesListeners:Landroidx/collection/MutableObjectList;

.field public final focusOwner:Landroidx/compose/ui/focus/FocusOwnerImpl;

.field public final fontFamilyResolver$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final fontLoader:Landroidx/compose/ui/platform/AndroidTextToolbar;

.field public forceUseMatrixCache:Z

.field public final globalLayoutListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

.field public globalPosition:J

.field public final graphicsContext:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

.field public final hapticFeedBack:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

.field public hoverExitReceived:Z

.field public isDrawingContent:Z

.field public isPendingInteropViewLayoutChangeDispatch:Z

.field public isRenderNodeCompatible:Z

.field public keyboardModifiersRequireUpdate:Z

.field public lastDownPointerPosition:J

.field public lastMatrixRecalculationAnimationTime:J

.field public final layerCache:Lcom/tinder/StateMachine;

.field public final layoutDirection$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final layoutNodes:Landroidx/collection/MutableIntObjectMap;

.field public final legacyTextInputServiceAndroid:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

.field public final measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

.field public final modifierLocalManager:Landroidx/compose/ui/modifier/ModifierLocalManager;

.field public final motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

.field public observationClearRequested:Z

.field public onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

.field public onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

.field public final pointerIconService:Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

.field public final pointerInputEventProcessor:Landroidx/compose/material/ripple/StateLayer;

.field public postponedDirtyLayers:Ljava/util/ArrayList;

.field public previousMotionEvent:Landroid/view/MotionEvent;

.field public final rectManager:Landroidx/compose/ui/spatial/RectManager;

.field public relayoutTime:J

.field public final resendMotionEventOnLayout:Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;

.field public final resendMotionEventRunnable:Landroidx/lifecycle/LiveData$1;

.field public final root:Landroidx/compose/ui/node/LayoutNode;

.field public final rootForTest:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final scrollCapture:Lcom/google/android/gms/tasks/zzs;

.field public final scrollChangedListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda1;

.field public final semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

.field public final sendHoverExitEvent:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

.field public final sharedDrawScope:Landroidx/compose/ui/node/LayoutNodeDrawScope;

.field public showLayoutBounds:Z

.field public final snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

.field public final softwareKeyboardController:Landroidx/compose/ui/platform/AndroidTextToolbar;

.field public final superclassInitComplete:Z

.field public final textInputService:Landroidx/compose/ui/text/input/TextInputService;

.field public final textInputSessionMutex:Ljava/util/concurrent/atomic/AtomicReference;

.field public final textToolbar:Landroidx/compose/ui/platform/AndroidTextToolbar;

.field public final tmpPositionArray:[I

.field public final touchModeChangeListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda2;

.field public final viewConfiguration:Landroidx/compose/ui/platform/AndroidViewConfiguration;

.field public viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

.field public final viewToWindowMatrix:[F

.field public final viewTreeOwners$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public wasMeasuredWithMultipleConstraints:Z

.field public windowPosition:J

.field public final windowToViewMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    const/4 v10, 0x1

    iput-boolean v10, v2, Landroidx/compose/ui/platform/AndroidComposeView;->superclassInitComplete:Z

    new-instance v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->sharedDrawScope:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-static {v9}, Lkotlinx/coroutines/intrinsics/CancellableKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    move-result-object v0

    sget-object v11, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v1, v0, v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->density$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v12, Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    invoke-direct {v12}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    new-instance v13, Landroidx/compose/ui/semantics/EmptySemanticsElement;

    invoke-direct {v13, v12}, Landroidx/compose/ui/semantics/EmptySemanticsElement;-><init>(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V

    new-instance v14, Landroidx/compose/ui/platform/AndroidComposeView$bringIntoViewNode$1;

    invoke-direct {v14, v2}, Landroidx/compose/ui/platform/AndroidComposeView$bringIntoViewNode$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    new-instance v15, Landroidx/compose/ui/focus/FocusOwnerImpl;

    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const-class v3, Landroidx/compose/ui/platform/AndroidComposeView;

    const-string/jumbo v4, "registerOnEndApplyChangesListener"

    const-string/jumbo v5, "registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v1, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;

    const/4 v8, 0x1

    move-object v2, v0

    move-object v0, v1

    const/4 v1, 0x2

    const-class v3, Landroidx/compose/ui/platform/AndroidComposeView;

    const-string v4, "onRequestFocusForOwner"

    const-string v5, "onRequestFocusForOwner-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z"

    move-object v10, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    const/4 v8, 0x6

    move-object v2, v0

    move-object v0, v1

    const/4 v1, 0x0

    const-class v3, Landroidx/compose/ui/platform/AndroidComposeView;

    const-string v4, "onClearFocusForOwner"

    const-string v5, "onClearFocusForOwner()V"

    move-object/from16 v16, v11

    move-object v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v7, v0

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;

    const/4 v2, 0x0

    const-class v3, Landroidx/compose/ui/platform/AndroidComposeView;

    const-string v5, "layoutDirection"

    const-string v6, "getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;"

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    invoke-direct {v15, v10, v11, v7, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;-><init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;Landroidx/room/RoomDatabase$closeBarrier$1;Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;)V

    iput-object v15, v2, Landroidx/compose/ui/platform/AndroidComposeView;->focusOwner:Landroidx/compose/ui/focus/FocusOwnerImpl;

    move-object/from16 v0, p2

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    invoke-direct {v0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->dragAndDropManager:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    new-instance v0, Lcom/google/android/gms/tasks/zzad;

    const/16 v10, 0xa

    invoke-direct {v0, v10}, Lcom/google/android/gms/tasks/zzad;-><init>(I)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;

    const/4 v11, 0x0

    invoke-direct {v0, v2, v11}, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v0}, Landroidx/compose/ui/input/key/Key_androidKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->onRotaryScrollEvent()Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/tasks/zzad;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/google/android/gms/tasks/zzad;-><init>(I)V

    iput-object v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    new-instance v3, Landroidx/compose/ui/platform/AndroidViewConfiguration;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/compose/ui/platform/AndroidViewConfiguration;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;->viewConfiguration:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    new-instance v3, Landroidx/compose/ui/node/LayoutNode;

    const/4 v15, 0x3

    invoke-direct {v3, v15}, Landroidx/compose/ui/node/LayoutNode;-><init>(I)V

    sget-object v4, Landroidx/compose/ui/layout/RootMeasurePolicy;->INSTANCE:Landroidx/compose/ui/layout/RootMeasurePolicy;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V

    invoke-interface {v13, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v1, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->modifier:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v0, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    iput-object v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;->root:Landroidx/compose/ui/node/LayoutNode;

    sget-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->layoutNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/compose/ui/spatial/RectManager;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/compose/ui/spatial/RectManager;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    iput-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeView;->rootForTest:Landroidx/compose/ui/platform/AndroidComposeView;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    move-result-object v3

    invoke-direct {v0, v1, v12, v3}, Landroidx/compose/ui/semantics/SemanticsOwner;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/EmptySemanticsModifier;Landroidx/collection/MutableIntObjectMap;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    new-instance v12, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-direct {v12, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v12, v2, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    new-instance v13, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x0

    const-class v3, Landroidx/compose/ui/platform/InvertMatrixKt;

    const-string v4, "getContentCaptureSessionCompat"

    const-string v5, "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v13, v2, v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/room/RoomDatabase$closeBarrier$1;)V

    iput-object v13, v2, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    new-instance v0, Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "accessibility"

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityManager:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    new-instance v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    invoke-direct {v0, v2}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->graphicsContext:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    new-instance v0, Landroidx/compose/ui/autofill/AutofillTree;

    invoke-direct {v0}, Landroidx/compose/ui/autofill/AutofillTree;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/ArrayList;

    new-instance v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    new-instance v3, Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-direct {v3, v1}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    iput-object v3, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/tasks/zzs;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iput-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    new-instance v1, Landroidx/compose/ui/node/HitTestResult;

    invoke-direct {v1}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    iput-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/material/ripple/StateLayer;

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE$1:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/work/WorkQuery;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    const-string v4, "Autofill service could not be located."

    if-eqz v1, :cond_6

    iput-object v1, v0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v1, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/work/WorkQuery;

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_4

    new-instance v1, Landroidx/compose/ui/autofill/AndroidAutofillManager;

    move-object v3, v1

    new-instance v1, Landroidx/room/ObservedTableVersions;

    invoke-direct {v1, v10, v0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v3

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/autofill/AndroidAutofillManager;-><init>(Landroidx/room/ObservedTableVersions;Landroidx/compose/ui/semantics/SemanticsOwner;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V

    move-object v2, v3

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    new-instance v0, Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-direct {v0, v9}, Landroidx/compose/ui/platform/AndroidClipboardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->clipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    new-instance v0, Landroidx/compose/ui/platform/AndroidClipboard;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->clipboard:Landroidx/compose/ui/platform/AndroidClipboard;

    new-instance v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;-><init>(Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    new-instance v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    const v0, 0x7fffffff

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long v3, v0, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    iput-wide v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    filled-new-array {v11, v11}, [I

    move-result-object v0

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v0

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v0

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    const-wide/16 v0, -0x1

    iput-wide v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    const-wide v0, 0x7f8000007f800000L    # 1.404448428688076E306

    iput-wide v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->isRenderNodeCompatible:Z

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_viewTreeOwners$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;

    invoke-direct {v1, v2, v11}, Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->viewTreeOwners$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11, v2}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda1;

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda2;

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->legacyTextInputServiceAndroid:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v1, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->textInputSessionMutex:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroidx/compose/ui/platform/AndroidTextToolbar;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getTextInputService()Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->softwareKeyboardController:Landroidx/compose/ui/platform/AndroidTextToolbar;

    new-instance v1, Landroidx/compose/ui/platform/AndroidTextToolbar;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->fontLoader:Landroidx/compose/ui/platform/AndroidTextToolbar;

    new-instance v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v3, Landroidx/transition/Transition$1;

    invoke-direct {v3, v15}, Landroidx/transition/Transition$1;-><init>(I)V

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    sget-object v4, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;

    invoke-virtual {v4, v9}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->fontWeightAdjustment(Landroid/content/Context;)I

    move-result v4

    new-instance v5, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    invoke-direct {v5, v4}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    invoke-direct {v1, v3, v5}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/transition/Transition$1;Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;)V

    new-instance v3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v4, v16

    invoke-direct {v3, v1, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;->fontFamilyResolver$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->currentFontWeightAdjustment:I

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_2
    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->layoutDirection$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    new-instance v0, Landroidx/compose/ui/input/InputModeManagerImpl;

    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    :goto_1
    invoke-direct {v0, v1}, Landroidx/compose/ui/input/InputModeManagerImpl;-><init>(I)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

    new-instance v0, Landroidx/compose/ui/modifier/ModifierLocalManager;

    invoke-direct {v0, v2}, Landroidx/compose/ui/modifier/ModifierLocalManager;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->modifierLocalManager:Landroidx/compose/ui/modifier/ModifierLocalManager;

    new-instance v0, Landroidx/compose/ui/platform/AndroidTextToolbar;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->$VALUES:[Landroidx/compose/ui/platform/TextToolbarStatus;

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->textToolbar:Landroidx/compose/ui/platform/AndroidTextToolbar;

    new-instance v0, Lcom/tinder/StateMachine;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->layerCache:Lcom/tinder/StateMachine;

    new-instance v0, Landroidx/collection/MutableObjectList;

    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, v15, v2}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventRunnable:Landroidx/lifecycle/LiveData$1;

    new-instance v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventOnLayout:Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;

    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

    invoke-direct {v0}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;-><init>()V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

    iget-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;

    invoke-virtual {v0, v2, v1, v11}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->focusable(Landroid/view/View;IZ)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {v2, v12}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->attach$ui_release(Landroidx/compose/ui/node/Owner;)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;->disallowForceDark(Landroid/view/View;)V

    new-instance v0, Lcom/google/android/gms/tasks/zzs;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->scrollCapture:Lcom/google/android/gms/tasks/zzs;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeView;->pointerIconService:Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    return-void

    :cond_4
    invoke-static {v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_5
    const-string v0, "Required value was null."

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final access$addExtraDataToAccessibilityNodeInfoHelper(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$dispatchKeyEvent$s408734394(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$get_viewTreeOwners(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->get_viewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object p0

    return-object p0
.end method

.method public static final access$onRequestFocusForOwner-7o62pno(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p1, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x82

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Landroidx/compose/ui/graphics/Brush;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static clearChildInvalidObservations(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->onEndApplyChanges()V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->clearChildInvalidObservations(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static convertMeasureSpec-I7RO_PI(I)J
    .locals 4

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    int-to-long v0, p0

    shl-long v2, v0, v2

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    int-to-long v0, v3

    shl-long/2addr v0, v2

    const p0, 0x7fffffff

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0

    :cond_2
    int-to-long v0, v3

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method

.method public static synthetic getLastMatrixRecalculationAnimationTime$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTextInputService$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    return-void
.end method

.method private final get_viewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_viewTreeOwners$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    return-object p0
.end method

.method public static invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui_release()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isBadMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_2

    sget-object v0, Landroidx/compose/ui/platform/MotionEventVerifierApi29;->INSTANCE:Landroidx/compose/ui/platform/MotionEventVerifierApi29;

    invoke-virtual {v0, p0, v6}, Landroidx/compose/ui/platform/MotionEventVerifierApi29;->isValidMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v3

    :goto_3
    if-nez v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->density$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private setFontFamilyResolver(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontFamilyResolver$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layoutDirection$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final set_viewTreeOwners(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_viewTreeOwners$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final autofill(Landroid/util/SparseArray;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsOwner;->nodes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v6, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->OnAutofillText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_4

    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v4

    const-string v6, "ComposeAutofillManager"

    if-eqz v4, :cond_2

    const-string v4, "Auto filling Date fields is not yet supported."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Auto filling dropdown lists is not yet supported."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Auto filling toggle fields are not yet supported."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/work/WorkQuery;

    if-eqz p0, :cond_c

    iget-object p0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/autofill/AutofillTree;

    iget-object v1, p0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_c

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_8
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "An operation is not implemented: b/138604541:  Add onFill() callback for toggle"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for list"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for date"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_4
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-virtual {p0, v1, v2, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->canScroll-0AR0LA0$ui_release(JIZ)Z

    move-result p0

    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-virtual {p0, v1, v2, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->canScroll-0AR0LA0$ui_release(JIZ)Z

    move-result p0

    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime_release()V

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v2, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iput-object p1, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroidx/compose/ui/node/LayoutNode;->draw$ui_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/AndroidCanvas;

    iput-object v2, v0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/node/OwnedLayer;

    invoke-interface {v4}, Landroidx/compose/ui/node/OwnedLayer;->updateDisplayList()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectManager;->dispatchCallbacks()V

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_0

    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->run()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_34

    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isBadMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1a

    :cond_2
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/16 v3, 0x1a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    iget-boolean v3, v3, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    if-eqz v3, :cond_3

    const-string p0, "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated."

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return v2

    :cond_3
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string/jumbo v3, "visitAncestors called on an unattached node"

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eqz v0, :cond_10

    iget-object v6, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v6, :cond_4

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4
    iget-object v6, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_f

    iget-object v7, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_d

    :goto_2
    if-eqz v6, :cond_d

    iget v7, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_c

    move-object v8, v5

    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_c

    instance-of v9, v7, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x4000

    if-eqz v9, :cond_b

    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_b

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v10, v2

    :goto_4
    if-eqz v9, :cond_a

    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v11, v11, 0x4000

    if-eqz v11, :cond_9

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v1, :cond_6

    move-object v7, v9

    goto :goto_5

    :cond_6
    if-nez v8, :cond_7

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v5

    :cond_8
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_a
    if-ne v10, v1, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_3

    :cond_c
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v6, :cond_e

    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_1

    :cond_e
    move-object v6, v5

    goto :goto_1

    :cond_f
    move-object v7, v5

    :goto_6
    check-cast v7, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    goto :goto_7

    :cond_10
    move-object v7, v5

    :goto_7
    if-eqz v7, :cond_32

    move-object v0, v7

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget-object v6, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v6, :cond_11

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_11
    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    move-object v7, v5

    :goto_8
    if-eqz v6, :cond_1d

    iget-object v8, v6, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    iget v8, v8, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_1b

    :goto_9
    if-eqz v3, :cond_1b

    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_1a

    move-object v8, v3

    move-object v9, v5

    :goto_a
    if-eqz v8, :cond_1a

    instance-of v10, v8, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    if-eqz v10, :cond_13

    if-nez v7, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_19

    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_19

    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v11, v2

    :goto_b
    if-eqz v10, :cond_18

    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_17

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v1, :cond_14

    move-object v8, v10

    goto :goto_c

    :cond_14
    if-nez v9, :cond_15

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_15
    if-eqz v8, :cond_16

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v8, v5

    :cond_16
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_17
    :goto_c
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_b

    :cond_18
    if-ne v11, v1, :cond_19

    goto :goto_a

    :cond_19
    :goto_d
    invoke-static {v9}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_a

    :cond_1a
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_9

    :cond_1b
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    if-eqz v6, :cond_1c

    iget-object v3, v6, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v3, :cond_1c

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_8

    :cond_1c
    move-object v3, v5

    goto :goto_8

    :cond_1d
    if-eqz v7, :cond_1f

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1f

    :goto_e
    add-int/lit8 v6, v3, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v6, :cond_1e

    goto :goto_f

    :cond_1e
    move v3, v6

    goto :goto_e

    :cond_1f
    :goto_f
    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object v6, v5

    :goto_10
    if-eqz v3, :cond_27

    instance-of v8, v3, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    if-eqz v8, :cond_20

    check-cast v3, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    goto :goto_13

    :cond_20
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_26

    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_26

    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v9, v2

    :goto_11
    if-eqz v8, :cond_25

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_24

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v1, :cond_21

    move-object v3, v8

    goto :goto_12

    :cond_21
    if-nez v6, :cond_22

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_22
    if-eqz v3, :cond_23

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v5

    :cond_23
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_24
    :goto_12
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_11

    :cond_25
    if-ne v9, v1, :cond_26

    goto :goto_10

    :cond_26
    :goto_13
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_10

    :cond_27
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto/16 :goto_19

    :cond_28
    iget-object p0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object p1, v5

    :goto_14
    if-eqz p0, :cond_30

    instance-of v0, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    if-eqz v0, :cond_29

    check-cast p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    goto :goto_17

    :cond_29
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2f

    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_2f

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v0, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v3, v2

    :goto_15
    if-eqz v0, :cond_2e

    iget v6, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_2d

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_2a

    move-object p0, v0

    goto :goto_16

    :cond_2a
    if-nez p1, :cond_2b

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {p1, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_2b
    if-eqz p0, :cond_2c

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p0, v5

    :cond_2c
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_2d
    :goto_16
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_15

    :cond_2e
    if-ne v3, v1, :cond_2f

    goto :goto_14

    :cond_2f
    :goto_17
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_14

    :cond_30
    if-eqz v7, :cond_32

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result p0

    move p1, v2

    :goto_18
    if-ge p1, p0, :cond_32

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    iget-object v0, v0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onEvent:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_31
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_32

    :goto_19
    return v1

    :cond_32
    return v2

    :cond_33
    :goto_1a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_34
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->run()V

    :cond_0
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->isBadMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object v5, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v6, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x7

    const/4 v10, 0x1

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0x100

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/high16 v14, -0x80000000

    if-eq v6, v9, :cond_5

    const/16 v15, 0x9

    if-eq v6, v15, :cond_5

    if-eq v6, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v6, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    if-eq v6, v14, :cond_4

    if-ne v6, v14, :cond_3

    goto/16 :goto_3

    :cond_3
    iput v14, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    invoke-static {v2, v14, v11, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    invoke-static {v2, v6, v7, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-virtual {v5, v10}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    new-instance v20, Landroidx/compose/ui/node/HitTestResult;

    invoke-direct/range {v20 .. v20}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v8, v6

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move-wide/from16 v16, v8

    int-to-long v7, v6

    const/16 v6, 0x20

    shl-long v16, v16, v6

    const-wide v18, 0xffffffffL

    and-long v6, v7, v18

    or-long v6, v16, v6

    iget-object v8, v14, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v9, v8, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/node/NodeCoordinator;

    sget-object v14, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v9, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    move-result-wide v18

    iget-object v6, v8, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, Landroidx/compose/ui/node/NodeCoordinator;

    sget-object v17, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    move-object/from16 v6, v20

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    :goto_0
    const/4 v8, -0x1

    if-ge v8, v7, :cond_6

    iget-object v8, v6, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    invoke-virtual {v8, v7}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v9, :cond_7

    :cond_6
    const/high16 v14, -0x80000000

    goto :goto_2

    :cond_7
    iget-object v9, v8, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    iget v9, v8, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v2, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v9

    invoke-static {v8, v4}, Lkotlin/text/CharsKt;->SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/ui/platform/InvertMatrixKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v14}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_a
    move v14, v9

    :goto_2
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    iget v5, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    if-ne v5, v14, :cond_b

    goto :goto_3

    :cond_b
    iput v14, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    invoke-static {v2, v14, v11, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    const/16 v15, 0x100

    invoke-static {v2, v5, v15, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    :cond_c
    :goto_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_10

    const/16 v5, 0xa

    if-eq v2, v5, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isInBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_e

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_f
    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    iput-boolean v10, v0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    :cond_10
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isPositionChanged(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/2addr v0, v10

    if-eqz v0, :cond_12

    return v10

    :cond_12
    :goto_5
    return v4
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/platform/WindowInfoImpl;->GlobalKeyboardModifiers:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v2, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    invoke-direct {v2, v0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusOwner$dispatchKeyEvent$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwner$dispatchKeyEvent$1;

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    iget-boolean v3, v3, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    if-eqz v3, :cond_0

    const-string v0, "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated."

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "visitAncestors called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    iget-object v4, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    iget v4, v4, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    :goto_1
    if-eqz v3, :cond_9

    iget v4, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    move-object v4, v3

    move-object v7, v6

    :goto_2
    if-eqz v4, :cond_8

    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_7

    instance-of v8, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_7

    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v9, v1

    :goto_3
    if-eqz v8, :cond_6

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v5

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v2, :cond_2

    move-object v4, v8

    goto :goto_4

    :cond_2
    if-nez v7, :cond_3

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v10, 0x10

    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_4
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_6
    if-ne v9, v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_8
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v3, :cond_a

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_0

    :cond_a
    move-object v3, v6

    goto :goto_0

    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->run()V

    :cond_2
    :goto_1
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isBadMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isPositionChanged(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    move-result p1

    and-int/lit8 v0, p1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_6

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "findViewByAccessibilityIdTraversal"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    if-eqz p1, :cond_b

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-ne p1, p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v1, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->calculateBoundingRectRelativeTo(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->calculateBoundingRectRelativeTo(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTraversalKt;->toFocusDirection(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, v2, Landroidx/compose/ui/focus/FocusDirection;->value:I

    goto :goto_2

    :cond_4
    const/4 v2, 0x6

    :goto_2
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v4, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v4, v2, v1, v5}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_6

    if-nez v0, :cond_a

    :goto_3
    return-object p1

    :cond_6
    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-static {v0, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->calculateBoundingRectRelativeTo(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_5
    return-object p0

    :cond_a
    return-object v0

    :cond_b
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method public bridge synthetic getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAccessibilityManager()Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityManager()Landroidx/compose/ui/platform/AndroidAccessibilityManager;
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityManager:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    return-object p0
.end method

.method public final getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/platform/AndroidViewsHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getAutofill()Landroidx/compose/ui/autofill/Autofill;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/work/WorkQuery;

    return-object p0
.end method

.method public getAutofillManager()Landroidx/compose/ui/autofill/AutofillManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    return-object p0
.end method

.method public getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    return-object p0
.end method

.method public getClipboard()Landroidx/compose/ui/platform/AndroidClipboard;
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->clipboard:Landroidx/compose/ui/platform/AndroidClipboard;

    return-object p0
.end method

.method public bridge synthetic getClipboard()Landroidx/compose/ui/platform/Clipboard;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboard()Landroidx/compose/ui/platform/AndroidClipboard;

    move-result-object p0

    return-object p0
.end method

.method public getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->clipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    return-object p0
.end method

.method public bridge synthetic getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    move-result-object p0

    return-object p0
.end method

.method public final getConfigurationChangeObserver()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->density$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dragAndDropManager:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    return-object p0
.end method

.method public bridge synthetic getDragAndDropManager()Landroidx/compose/ui/draganddrop/DragAndDropManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    move-result-object p0

    return-object p0
.end method

.method public getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->focusOwner:Landroidx/compose/ui/focus/FocusOwnerImpl;

    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->onFetchFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 p0, -0x80000000

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontFamilyResolver$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object p0
.end method

.method public getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontLoader:Landroidx/compose/ui/platform/AndroidTextToolbar;

    return-object p0
.end method

.method public getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->graphicsContext:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    return-object p0
.end method

.method public getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    return-object p0
.end method

.method public getHasPendingMeasureOrLayout()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraKpi;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method public getImportantForAutofill()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getInputModeManager()Landroidx/compose/ui/input/InputModeManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

    return-object p0
.end method

.method public final getLastMatrixRecalculationAnimationTime$ui_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    return-wide v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layoutDirection$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public bridge synthetic getLayoutNodes()Landroidx/collection/IntObjectMap;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutNodes()Landroidx/collection/MutableIntObjectMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layoutNodes:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method

.method public getMeasureIteration()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-nez v0, :cond_0

    const-string v0, "measureIteration should be only used during the measure/layout pass"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureIteration:J

    return-wide v0
.end method

.method public getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->modifierLocalManager:Landroidx/compose/ui/modifier/ModifierLocalManager;

    return-object p0
.end method

.method public getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .locals 2

    sget v0, Landroidx/compose/ui/layout/PlaceableKt;->$r8$clinit:I

    new-instance v0, Landroidx/compose/ui/layout/OuterPlacementScope;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/layout/OuterPlacementScope;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerIconService:Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    return-object p0
.end method

.method public getRectManager()Landroidx/compose/ui/spatial/RectManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    return-object p0
.end method

.method public getRoot()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->root:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public getRootForTest()Landroidx/compose/ui/node/RootForTest;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->rootForTest:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object p0
.end method

.method public final getScrollCaptureInProgress$ui_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollCapture:Lcom/google/android/gms/tasks/zzs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    return-object p0
.end method

.method public getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sharedDrawScope:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    return-object p0
.end method

.method public getShowLayoutBounds()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->showLayoutBounds:Z

    return p0
.end method

.method public getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    return-object p0
.end method

.method public getSoftwareKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->softwareKeyboardController:Landroidx/compose/ui/platform/AndroidTextToolbar;

    return-object p0
.end method

.method public getTextInputService()Landroidx/compose/ui/text/input/TextInputService;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    return-object p0
.end method

.method public getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textToolbar:Landroidx/compose/ui/platform/AndroidTextToolbar;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewConfiguration:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    return-object p0
.end method

.method public final getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewTreeOwners$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    return-object p0
.end method

.method public getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    return-object p0
.end method

.method public final get_autofillManager$ui_release()Landroidx/compose/ui/autofill/AndroidAutofillManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    return-object p0
.end method

.method public final handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition(Landroid/view/MotionEvent;)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    invoke-virtual {v1, v7}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    const-string v2, "AndroidOwner:onTouch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v10, :cond_0

    move v11, v8

    goto :goto_0

    :cond_0
    move v11, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :goto_0
    const/16 v12, 0xa

    iget-object v13, v1, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/material/ripple/StateLayer;

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v8

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v14, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v12, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/16 v3, 0xa

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    move-object v14, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_d

    :cond_5
    move-object v14, v2

    goto :goto_4

    :goto_3
    iget-boolean v1, v13, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    if-nez v1, :cond_6

    iget-object v1, v13, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzs;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v1, v13, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/LayerMatrixCache;->processCancel()V

    :cond_6
    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v10, :cond_7

    move v1, v8

    goto :goto_5

    :cond_7
    move v1, v7

    :goto_5
    const/16 v15, 0x9

    if-nez v11, :cond_8

    if-eqz v1, :cond_8

    if-eq v9, v10, :cond_8

    if-eq v9, v15, :cond_8

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isInBounds(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    const/16 v3, 0x9

    move-object/from16 v1, p0

    move-object v2, v0

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    goto :goto_6

    :cond_8
    move-object/from16 v1, p0

    :goto_6
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v12, :cond_14

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    goto :goto_7

    :cond_a
    const/4 v0, -0x1

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, v1, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    if-ne v2, v15, :cond_b

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-nez v2, :cond_b

    if-ltz v0, :cond_14

    iget-object v2, v3, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v2, v3, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    goto/16 :goto_c

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    goto :goto_8

    :cond_c
    move v2, v4

    :goto_8
    iget-object v5, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpg-float v2, v2, v5

    if-nez v2, :cond_e

    cmpg-float v2, v4, v6

    if-nez v2, :cond_e

    move v2, v7

    goto :goto_9

    :cond_e
    move v2, v8

    :goto_9
    iget-object v4, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    goto :goto_a

    :cond_f
    const-wide/16 v4, -0x1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-eqz v4, :cond_10

    move v4, v8

    goto :goto_b

    :cond_10
    move v4, v7

    :goto_b
    if-nez v2, :cond_11

    if-eqz v4, :cond_14

    :cond_11
    if-ltz v0, :cond_12

    iget-object v2, v3, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v2, v3, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_12
    iget-object v0, v13, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-boolean v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    if-eqz v2, :cond_13

    iput-boolean v8, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    goto :goto_c

    :cond_13
    iget-object v0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_14
    :goto_c
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->sendMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iput-boolean v7, v1, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    return v0

    :catchall_2
    move-exception v0

    goto :goto_e

    :goto_d
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_e
    iput-boolean v7, v1, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    throw v0
.end method

.method public final invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure(Landroidx/compose/ui/node/LayoutNode;Z)Z

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isInBounds(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPositionChanged(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    cmpg-float p0, p1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final localToScreen-MK-Hz9U(J)J
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-static {p1, p2, v0}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide p1

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-wide v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    and-long/2addr v5, v3

    long-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    add-float/2addr p0, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final measureAndLayout(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraKpi;->isNotEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v1, "AndroidOwner:measureAndLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventOnLayout:Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout(Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks(Z)V

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isPendingInteropViewLayoutChangeDispatch:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isPendingInteropViewLayoutChangeDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    const-string v1, "AndroidOwner:measureAndLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    iget-object p1, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraKpi;->isNotEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks(Z)V

    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isPendingInteropViewLayoutChangeDispatch:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isPendingInteropViewLayoutChangeDispatch:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectManager;->dispatchCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/ArrayList;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/ArrayList;

    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    iget-object v2, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->start()V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/work/WorkQuery;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/autofill/AutofillCallback;->INSTANCE:Landroidx/compose/ui/autofill/AutofillCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/LifecycleKt;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-static {p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, v2, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-ne v0, v4, :cond_1

    if-eq v1, v4, :cond_4

    :cond_1
    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->set_viewTreeOwners(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

    iget-object v1, v1, Landroidx/compose/ui/input/InputModeManagerImpl;->inputMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v2, Landroidx/compose/ui/input/InputMode;

    invoke-direct {v2, v0}, Landroidx/compose/ui/input/InputMode;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->setViewTranslationCallback(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v1, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->listeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->listeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    const-string p0, "No lifecycle owner exists"

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Composed into the View which doesn\'t propagateViewTreeSavedStateRegistryOwner!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Composed into the View which doesn\'t propagate ViewTreeLifecycleOwner!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputSessionMutex:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->legacyTextInputServiceAndroid:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->setDensity(Landroidx/compose/ui/unit/Density;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->currentFontWeightAdjustment:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->currentFontWeightAdjustment:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v2, Landroidx/transition/Transition$1;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroidx/transition/Transition$1;-><init>(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;

    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->fontWeightAdjustment(Landroid/content/Context;)I

    move-result v0

    new-instance v3, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    invoke-direct {v3, v0}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/transition/Transition$1;Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;)V

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->setFontFamilyResolver(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputSessionMutex:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->legacyTextInputServiceAndroid:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-wide v1, p1, v0

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v3

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/view/translation/ViewTranslationRequest$Builder;

    iget-object v3, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    iget v4, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    int-to-long v4, v4

    invoke-direct {v2, v3, v4, v5}, Landroid/view/translation/ViewTranslationRequest$Builder;-><init>(Landroid/view/autofill/AutofillId;J)V

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    const-string v3, "\n"

    const/16 v4, 0x3e

    invoke-static {v4, v3, v1}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v3, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    const-string v1, "android:text"

    invoke-static {v3}, Landroid/view/translation/TranslationRequestValue;->forText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationRequestValue;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/translation/ViewTranslationRequest$Builder;->setValue(Ljava/lang/String;Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/ViewTranslationRequest$Builder;

    invoke-virtual {v2}, Landroid/view/translation/ViewTranslationRequest$Builder;->build()Landroid/view/translation/ViewTranslationRequest;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->dispose()V

    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-object v5, v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v5, v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v5, v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v4, v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/work/WorkQuery;

    if-eqz v0, :cond_3

    sget-object v1, Landroidx/compose/ui/autofill/AutofillCallback;->INSTANCE:Landroidx/compose/ui/autofill/AutofillCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener:Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->clearViewTranslationCallback(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsOwner;->listeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->listeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :cond_5
    const-string p0, "No lifecycle owner exists"

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final onEndApplyChanges()V
    .locals 11

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    iget-object v4, v0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_3

    iget-object v8, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v8, v8, v6

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeScopeIf()V

    iget-object v8, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    iget v8, v8, Landroidx/collection/MutableScatterMap;->_size:I

    if-eqz v8, :cond_0

    move v8, v2

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    if-nez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-lez v7, :cond_2

    iget-object v8, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v9, v6, v7

    aget-object v10, v8, v6

    aput-object v10, v8, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v7, v5, v7

    invoke-static {v6, v7, v5, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v7, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iput-boolean v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    goto :goto_4

    :goto_3
    monitor-exit v4

    throw p0

    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->clearChildInvalidObservations(Landroid/view/ViewGroup;)V

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v0, :cond_7

    iget-object v4, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    iget v5, v4, Landroidx/collection/MutableIntSet;->_size:I

    if-nez v5, :cond_6

    iget-boolean v5, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->pendingAutofillCommit:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    iget-object v5, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v5, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v5}, Landroid/view/autofill/AutofillManager;->commit()V

    iput-boolean v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->pendingAutofillCommit:Z

    :cond_6
    iget v4, v4, Landroidx/collection/MutableIntSet;->_size:I

    if-eqz v4, :cond_7

    iput-boolean v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->pendingAutofillCommit:Z

    :cond_7
    :goto_5
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    iget v2, v0, Landroidx/collection/MutableObjectList;->_size:I

    if-eqz v2, :cond_b

    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    iget v0, v0, Landroidx/collection/MutableObjectList;->_size:I

    move v2, v3

    :goto_6
    if-ge v2, v0, :cond_a

    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {v4, v2}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    if-ltz v2, :cond_9

    iget v6, v5, Landroidx/collection/MutableObjectList;->_size:I

    if-ge v2, v6, :cond_9

    iget-object v5, v5, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    aget-object v6, v5, v2

    aput-object v1, v5, v2

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v5, v2}, Landroidx/collection/MutableObjectList;->throwIndexOutOfBoundsExclusiveException$collection(I)V

    throw v1

    :cond_a
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {v2, v3, v0}, Landroidx/collection/MutableObjectList;->removeRange(II)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method public final onFetchFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->calculateBoundingRectRelativeTo(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventOnLayout:Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout(Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->updatePositionCacheAndDispatch()V

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object p0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesInvalidated:Z

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    const-string v1, "AndroidOwner:onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->convertMeasureSpec-I7RO_PI(I)J

    move-result-wide v1

    const/16 p1, 0x20

    ushr-long v3, v1, p1

    long-to-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {p2}, Landroidx/compose/ui/platform/AndroidComposeView;->convertMeasureSpec-I7RO_PI(I)J

    move-result-wide v6

    ushr-long p1, v6, p1

    long-to-int p1, p1

    and-long/2addr v4, v6

    long-to-int p2, v4

    invoke-static {v3, v1, p1, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->fitPrioritizingHeight-Zbe2FdA(IIII)J

    move-result-wide p1

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->wasMeasuredWithMultipleConstraints:Z

    goto :goto_0

    :cond_1
    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->wasMeasuredWithMultipleConstraints:Z

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->updateRootConstraints-BRTryo0(J)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureOnly()V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p1, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p2, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p2, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 11

    if-eqz p1, :cond_9

    const/4 p2, 0x1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsOwner;->rootNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rootAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName$Companion;->populate(Landroid/view/ViewStructure;Landroidx/compose/ui/node/LayoutNode;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V

    sget-object v4, Landroidx/collection/ObjectListKt;->EmptyArray:[Ljava/lang/Object;

    new-instance v4, Landroidx/collection/MutableObjectList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroidx/collection/MutableObjectList;-><init>(I)V

    invoke-virtual {v4, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :cond_0
    iget v1, v4, Landroidx/collection/MutableObjectList;->_size:I

    if-eqz v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type android.view.ViewStructure"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewStructure;

    iget v5, v4, Landroidx/collection/MutableObjectList;->_size:I

    sub-int/2addr v5, p2

    invoke-virtual {v4, v5}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v6, v5, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v9, v8, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-nez v9, :cond_4

    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->OnAutofillText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v9

    invoke-static {v9, v8, v2, v3, v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName$Companion;->populate(Landroid/view/ViewStructure;Landroidx/compose/ui/node/LayoutNode;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V

    invoke-virtual {v4, v8}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/work/WorkQuery;

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/autofill/AutofillTree;

    iget-object v1, v0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Landroidx/compose/ui/autofill/AutofillTree;->children:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    iget-object p0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v2, p0, v0, v0}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setAutofillType(I)V

    throw v0

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_9
    :goto_2
    return-void
.end method

.method public final onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    if-eqz p2, :cond_b

    iget-object p2, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    if-eq v1, v3, :cond_c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9

    iget-boolean v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-boolean v3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    iget-object p3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v3, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->measurePending:Z

    iget-boolean p3, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz p3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlacedInLookahead()Ljava/lang/Boolean;

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-boolean p3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object p3

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq p3, v1, :cond_3

    iget-object p3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz p3, :cond_4

    iget-object p3, p3, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result p3

    if-ne p3, v3, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p3, p3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean p3, p3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-ne p3, v3, :cond_7

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getCanAffectPlacedParent(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p3

    if-eqz p3, :cond_8

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p3

    if-ne p3, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2, p1, v3}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_8
    :goto_1
    iget-boolean p2, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    if-nez p2, :cond_c

    if-eqz p4, :cond_c

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_9
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_a
    iget-object p0, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p2, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    invoke-direct {p2, p1, v3, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;-><init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    return-void

    :cond_b
    invoke-virtual {v0, p1, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz p4, :cond_c

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V
    .locals 9

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    const/4 v7, 0x1

    if-eqz p2, :cond_b

    iget-object p2, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v8, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_1

    if-eq v8, v7, :cond_13

    if-eq v8, v4, :cond_1

    if-eq v8, v3, :cond_13

    if-ne v8, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-boolean v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-eqz v2, :cond_3

    :cond_2
    if-nez p3, :cond_3

    goto/16 :goto_6

    :cond_3
    iput-boolean v7, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    iput-boolean v7, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPendingForAlignment:Z

    iget-object p3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v7, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iput-boolean v7, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    iget-boolean p3, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz p3, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlacedInLookahead()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_5

    iget-object v0, p3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-ne v0, v7, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    iget-object v0, p3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-ne v0, v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p2, p1, v7}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result v0

    if-ne v0, v7, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p3

    if-ne p3, v7, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p2, p1, v5}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_a
    :goto_2
    iget-boolean p1, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    if-nez p1, :cond_13

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_13

    if-eq p2, v7, :cond_13

    if-eq p2, v4, :cond_13

    if-eq p2, v3, :cond_13

    if-ne p2, v2, :cond_12

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    move v2, v5

    goto :goto_4

    :cond_d
    :goto_3
    move v2, v7

    :goto_4
    if-nez p3, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p3

    if-nez p3, :cond_13

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p3

    if-ne p3, v2, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p3

    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean v3, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlacedByParent:Z

    if-ne p3, v3, :cond_e

    goto :goto_6

    :cond_e
    iget-object p3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v7, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iput-boolean v7, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    iget-boolean p3, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlacedByParent:Z

    if-eqz p3, :cond_13

    if-eqz v2, :cond_13

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result p3

    if-ne p3, v7, :cond_10

    goto :goto_5

    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p2

    if-ne p2, v7, :cond_11

    goto :goto_5

    :cond_11
    iget-object p2, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p2, p1, v5}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    :goto_5
    iget-boolean p1, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    if-nez p1, :cond_13

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_12
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_13
    :goto_6
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x4002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {}, Landroidx/compose/ui/platform/AndroidTextToolbar;->access$getIsShowingLayoutBounds()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->superclassInitComplete:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :goto_0
    if-nez p1, :cond_2

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    :cond_3
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 12

    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollCapture:Lcom/google/android/gms/tasks/zzs;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;

    invoke-direct {v9, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    new-instance v5, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;

    const-string v11, "add(Ljava/lang/Object;)Z"

    const/16 v7, 0x8

    const/4 v6, 0x1

    const-class v8, Landroidx/compose/runtime/collection/MutableVector;

    const-string v10, "add"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpi;->visitScrollCaptureCandidates(Landroidx/compose/ui/semantics/SemanticsNode;ILandroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;)V

    sget-object p1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;->INSTANCE:Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;

    sget-object v0, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;->INSTANCE$2:Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;

    filled-new-array {p1, v0}, [Lkotlin/jvm/functions/Function1;

    move-result-object p1

    new-instance v0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    iget p1, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v6

    iget-object v0, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    check-cast p1, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->viewportBoundsInWindow:Landroidx/compose/ui/unit/IntRect;

    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v3

    new-instance v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    iget-object v1, p1, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;Lkotlinx/coroutines/internal/ContextScope;Lcom/google/android/gms/tasks/zzs;Landroidx/compose/ui/platform/AndroidComposeView;)V

    iget-object p0, p1, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    invoke-interface {p1, p0, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    iget p1, v2, Landroidx/compose/ui/unit/IntRect;->left:I

    iget p2, v2, Landroidx/compose/ui/unit/IntRect;->top:I

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    int-to-long v6, p2

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v3, v6

    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/Brush;->toAndroidRect(Landroidx/compose/ui/unit/IntRect;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p2, Landroid/graphics/Point;

    shr-long v6, v3, p1

    long-to-int p1, v6

    and-long/2addr v3, v8

    long-to-int v1, v3

    invoke-direct {p2, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/view/ScrollCaptureTarget;

    invoke-direct {p1, v5, p0, p2, v0}, Landroid/view/ScrollCaptureTarget;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)V

    invoke-static {v2}, Landroidx/compose/ui/graphics/Brush;->toAndroidRect(Landroidx/compose/ui/unit/IntRect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ScrollCaptureTarget;->setScrollBounds(Landroid/graphics/Rect;)V

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onSemanticsChange()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    if-nez v2, :cond_0

    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesInvalidated:Z

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->handler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqNamesUtilKt;->doTranslation(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->keyboardModifiersRequireUpdate:Z

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/compose/ui/platform/AndroidTextToolbar;->access$getIsShowingLayoutBounds()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_0
    return-void
.end method

.method public final recalculateWindowPosition()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 4
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->calculateMatrixToWindow-EL8BTi8(Landroid/view/View;[F)V

    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p0

    .line 8
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 9
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 10
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 12
    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 13
    aget v5, v0, v4

    int-to-float v5, v5

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    aget v1, v0, v2

    int-to-float v1, v1

    .line 16
    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr v3, v1

    sub-float/2addr v5, v0

    .line 17
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 18
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 19
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    :cond_1
    return-void
.end method

.method public final recalculateWindowPosition(Landroid/view/MotionEvent;)V
    .locals 9

    .line 20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 21
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->calculateMatrixToWindow-EL8BTi8(Landroid/view/View;[F)V

    .line 22
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    .line 25
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long v2, v3, v0

    const-wide v7, 0xffffffffL

    and-long v4, v5, v7

    or-long/2addr v2, v4

    .line 26
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide v1

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    shr-long v4, v1, v0

    long-to-int v4, v4

    .line 28
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    and-long/2addr v1, v7

    long-to-int v1, v1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr p1, v1

    .line 31
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    .line 32
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v3, p1

    shl-long v0, v1, v0

    and-long v2, v3, v7

    or-long/2addr v0, v2

    .line 33
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    return-void
.end method

.method public final recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroidx/compose/ui/window/DialogWrapper$1$2;

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layerCache:Lcom/tinder/StateMachine;

    iget-object v1, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    iget-object v2, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->toFocusDirection(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Landroidx/compose/ui/focus/FocusDirection;->value:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    if-eqz p2, :cond_2

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance p2, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;

    invoke-direct {p2, p1}, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;-><init>(I)V

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->wasMeasuredWithMultipleConstraints:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-wide v0, v0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method public final screenToLocal-MK-Hz9U(J)J
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-wide v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    and-long/2addr v4, v2

    long-to-int p2, v4

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v4, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    shl-long v0, v4, v0

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final sendMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I
    .locals 7

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->keyboardModifiersRequireUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->keyboardModifiersRequireUpdate:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/platform/WindowInfoImpl;->GlobalKeyboardModifiers:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v3, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    invoke-direct {v3, v0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    invoke-virtual {v0, p1, p0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Lcom/tinder/StateMachine;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/material/ripple/StateLayer;

    if-eqz v2, :cond_8

    iget-object v1, v2, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    :goto_0
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    iget-boolean v6, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->down:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    if-eqz v4, :cond_4

    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;->position:J

    iput-wide v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isInBounds(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v3, v2, p0, v1}, Landroidx/compose/material/ripple/StateLayer;->process-BIzXfog(Lcom/tinder/StateMachine;Landroidx/compose/ui/platform/AndroidComposeView;Z)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    :cond_5
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    :cond_6
    return p0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return p0

    :cond_8
    iget-boolean p0, v3, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    if-nez p0, :cond_9

    iget-object p0, v3, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzs;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object p0, v3, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->processCancel()V

    :cond_9
    return v1
.end method

.method public final sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, -0x1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-eq v5, v2, :cond_2

    const/16 v2, 0xa

    if-eq v5, v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ltz v3, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    sub-int/2addr v2, v7

    if-nez v2, :cond_4

    return-void

    :cond_4
    new-array v7, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_5

    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    new-array v8, v2, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_6

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_9

    if-ltz v3, :cond_8

    if-ge v9, v3, :cond_7

    goto :goto_5

    :cond_7
    move v10, v6

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v10, 0x0

    :goto_6
    add-int/2addr v10, v9

    aget-object v11, v7, v9

    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v11, v8, v9

    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v13, v10

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v4, v10

    const/16 v10, 0x20

    shl-long/2addr v13, v10

    const-wide v15, 0xffffffffL

    and-long/2addr v4, v15

    or-long/2addr v4, v13

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v4

    shr-long v13, v4, v10

    long-to-int v10, v13

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    and-long/2addr v4, v15

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iput v4, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p2

    goto :goto_4

    :cond_9
    if-eqz p5, :cond_a

    const/4 v10, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    move v10, v4

    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    cmp-long v3, v3, v11

    if-nez v3, :cond_b

    move-wide/from16 v3, p3

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    :goto_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move/from16 v5, p2

    move v6, v2

    move-wide v1, v3

    move-wide/from16 v3, p3

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Lcom/tinder/StateMachine;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/material/ripple/StateLayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Landroidx/compose/material/ripple/StateLayer;->process-BIzXfog(Lcom/tinder/StateMachine;Landroidx/compose/ui/platform/AndroidComposeView;Z)I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public setAccessibilityEventBatchIntervalMillis(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->composeAccessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    return-void
.end method

.method public final setConfigurationChangeObserver(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setContentCaptureManager$ui_release(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->contentCaptureManager:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    return-void
.end method

.method public setCoroutineContext(Lkotlin/coroutines/CoroutineContext;)V
    .locals 9

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    instance-of p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez p1, :cond_1

    const-string/jumbo p1, "visitSubtreeIf called on an unattached node"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v1, :cond_2

    invoke-static {p1, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_0
    iget p0, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz p0, :cond_c

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_b

    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v2

    :goto_2
    if-eqz v3, :cond_a

    instance-of v5, v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v5, :cond_3

    check-cast v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    instance-of v5, v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz v5, :cond_9

    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    goto :goto_5

    :cond_3
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_9

    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_9

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-eqz v5, :cond_8

    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_4

    move-object v3, v5

    goto :goto_4

    :cond_4
    if-nez v4, :cond_5

    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_6
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_8
    if-ne v6, v7, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_2

    :cond_a
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_b
    invoke-static {p1, p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_c
    return-void
.end method

.method public final setLastMatrixRecalculationAnimationTime$ui_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    return-void
.end method

.method public final setOnViewTreeOwnersAvailable(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

    :cond_1
    return-void
.end method

.method public setShowLayoutBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->showLayoutBounds:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final updatePositionCacheAndDispatch()V
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    const/16 v3, 0x20

    shr-long v4, v1, v3

    long-to-int v4, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v1, v5

    long-to-int v1, v1

    const/4 v2, 0x0

    aget v7, v0, v2

    const/4 v8, 0x1

    if-ne v4, v7, :cond_0

    aget v9, v0, v8

    if-ne v1, v9, :cond_0

    iget-wide v9, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    :cond_0
    aget v0, v0, v8

    int-to-long v9, v7

    shl-long/2addr v9, v3

    int-to-long v11, v0

    and-long/2addr v5, v11

    or-long/2addr v5, v9

    iput-wide v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    const v0, 0x7fffffff

    if-eq v4, v0, :cond_1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v1

    iget-wide v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    iget-wide v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-static {v7}, Lkotlin/text/HexFormatKt;->access$analyzeComponents-58bKbWc([F)I

    move-result v9

    iget-object v10, v1, Landroidx/compose/ui/spatial/RectManager;->throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-wide v11, v10, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    invoke-static {v5, v6, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_3

    iput-wide v5, v10, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    iget-wide v11, v10, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    invoke-static {v3, v4, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_4

    iput-wide v3, v10, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    move v5, v8

    :cond_4
    if-eqz v7, :cond_5

    move v5, v8

    :cond_5
    if-nez v5, :cond_6

    iget-boolean v3, v1, Landroidx/compose/ui/spatial/RectManager;->isScreenOrWindowDirty:Z

    if-eqz v3, :cond_7

    :cond_6
    move v2, v8

    :cond_7
    iput-boolean v2, v1, Landroidx/compose/ui/spatial/RectManager;->isScreenOrWindowDirty:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks(Z)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectManager;->dispatchCallbacks()V

    return-void
.end method
