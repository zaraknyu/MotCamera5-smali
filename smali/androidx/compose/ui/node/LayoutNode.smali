.class public final Landroidx/compose/ui/node/LayoutNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/node/ComposeUiNode;


# static fields
.field public static final DummyViewConfiguration:Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

.field public static final ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

.field public static final ZComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;


# instance fields
.field public final _foldedChildren:Landroidx/room/concurrent/FileLock;

.field public _foldedParent:Landroidx/compose/ui/node/LayoutNode;

.field public _innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field public _modifier:Landroidx/compose/ui/Modifier;

.field public _semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

.field public _unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

.field public final _zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

.field public canMultiMeasure:Z

.field public compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

.field public density:Landroidx/compose/ui/unit/Density;

.field public depth:I

.field public forceUseOldLayers:Z

.field public ignoreRemeasureRequests:Z

.field public innerLayerCoordinatorIsDirty:Z

.field public interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

.field public intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public isCurrentlyCalculatingSemanticsConfiguration:Z

.field public isDeactivated:Z

.field public isSemanticsInvalidated:Z

.field public final isVirtual:Z

.field public lastSize:J

.field public final layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

.field public measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

.field public needsOnPositionedDispatch:Z

.field public final nodes:Landroidx/compose/ui/node/NodeChain;

.field public offsetFromRoot:J

.field public onAttach:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

.field public onDetach:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

.field public outerToInnerOffset:J

.field public outerToInnerOffsetDirty:Z

.field public owner:Landroidx/compose/ui/node/Owner;

.field public pendingModifier:Landroidx/compose/ui/Modifier;

.field public previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public semanticsId:I

.field public subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field public unfoldedVirtualChildrenListDirty:Z

.field public viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

.field public virtualChildrenCount:I

.field public zSortedChildrenInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 2
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/node/LayoutNode;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p2, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 5
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    const-wide p1, 0x7fffffff7fffffffL

    .line 6
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNode;->offsetFromRoot:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->lastSize:J

    .line 8
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 10
    new-instance p2, Landroidx/room/concurrent/FileLock;

    .line 11
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 12
    new-instance v2, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v3, 0x18

    invoke-direct {v2, v3, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x4

    invoke-direct {p2, v3, v0, v2}, Landroidx/room/concurrent/FileLock;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    .line 13
    new-instance p2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v1, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 16
    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 17
    sget-object p2, Landroidx/compose/ui/node/LayoutNodeKt;->DefaultDensity:Landroidx/compose/ui/unit/DensityImpl;

    .line 18
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 19
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 20
    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 21
    sget-object p2, Landroidx/compose/runtime/CompositionLocalMap;->Companion:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object p2, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 23
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

    .line 24
    sget-object p2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 25
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 26
    new-instance p2, Landroidx/compose/ui/node/NodeChain;

    invoke-direct {p2, p0}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 27
    new-instance p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-direct {p2, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    .line 29
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->_modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method private final exceptionMessageForParentingOrOwnership(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot insert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it already has a parent or an owner. This tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Other tree: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    move v1, v2

    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "Lookahead measure cannot be requested on a node that is not a part of theLookaheadScope"

    invoke-static {p2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v3, :cond_b

    check-cast p2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p2, p0, v2, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    if-eqz v1, :cond_b

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eqz p2, :cond_b

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq p0, v0, :cond_b

    :goto_2
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, p0, :cond_6

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p2, v0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_9

    if-ne p0, v2, :cond_8

    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_7

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    return-void

    :cond_7
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Intrinsics isn\'t used by the parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x6

    if-eqz p0, :cond_a

    invoke-static {p2, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void

    :cond_a
    invoke-static {p2, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3, p0, v1, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    if-eqz p2, :cond_8

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eqz p2, :cond_8

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq p0, v0, :cond_8

    :goto_2
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, p0, :cond_5

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v0

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_7

    if-ne p0, v2, :cond_6

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Intrinsics isn\'t used by the parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/4 p0, 0x6

    invoke-static {p2, p1, p0}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_8
    :goto_4
    return-void
.end method

.method public static rescheduleRemeasureOrRelayout$ui_release(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v2, Landroidx/compose/ui/node/LayoutNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_0

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void

    :cond_0
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final applyModifier(Landroidx/compose/ui/Modifier;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->_modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v3, v2, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v4, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/node/TailModifierNode;

    iget-object v4, v2, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-object v5, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    sget-object v6, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "padChain called on already padded chain"

    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget-object v5, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    iput-object v6, v5, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    iput-object v5, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    iget-object v5, v2, Landroidx/compose/ui/node/NodeChain;->current:Ljava/util/RandomAccess;

    check-cast v5, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v5, :cond_1

    iget v9, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v10, v2, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    if-nez v10, :cond_2

    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v11, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v10, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_2
    iget v12, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-ge v12, v11, :cond_3

    move v12, v11

    :cond_3
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v12, [Landroidx/compose/ui/Modifier;

    invoke-direct {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v12, 0x0

    move-object v1, v12

    :goto_2
    iget v14, v13, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v14, :cond_7

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/Modifier;

    instance-of v15, v14, Landroidx/compose/ui/CombinedModifier;

    if-eqz v15, :cond_4

    check-cast v14, Landroidx/compose/ui/CombinedModifier;

    iget-object v15, v14, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object v14, v14, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    instance-of v15, v14, Landroidx/compose/ui/Modifier$Element;

    if-eqz v15, :cond_5

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/4 v15, 0x1

    invoke-direct {v1, v15, v10}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    :cond_6
    move-object v15, v1

    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->all(Lkotlin/jvm/functions/Function1;)Z

    move-object v1, v15

    goto :goto_2

    :cond_7
    iget v1, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const-string v13, "expected prior modifier list to be non-empty"

    const/4 v14, 0x1

    if-ne v1, v9, :cond_12

    iget-object v1, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object v3, v2

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_d

    if-ge v2, v9, :cond_d

    if-eqz v5, :cond_c

    iget-object v6, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v6, v6, v2

    check-cast v6, Landroidx/compose/ui/Modifier$Element;

    iget-object v11, v10, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v11, v11, v2

    check-cast v11, Landroidx/compose/ui/Modifier$Element;

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v15, v8, :cond_9

    move v15, v14

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_b

    if-eq v15, v14, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v6, v11, v1}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    :goto_5
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_6

    :cond_c
    invoke-static {v13}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_6
    if-ge v2, v9, :cond_11

    if-eqz v5, :cond_10

    if-eqz v1, :cond_f

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    if-eqz v4, :cond_e

    move v8, v14

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    xor-int/lit8 v6, v8, 0x1

    move-object v4, v5

    move-object v5, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    :goto_8
    move-object v5, v3

    :goto_9
    move v8, v14

    goto/16 :goto_10

    :cond_f
    const-string/jumbo v0, "structuralUpdate requires a non-null tail"

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-static {v13}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_11
    move-object v2, v3

    goto :goto_e

    :cond_12
    iget-object v8, v4, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    if-eqz v8, :cond_15

    if-nez v9, :cond_15

    const/4 v1, 0x0

    :goto_a
    iget v3, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-ge v1, v3, :cond_13

    iget-object v3, v10, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Landroidx/compose/ui/Modifier$Element;

    invoke-static {v3, v6}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_13
    iget-object v1, v7, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    const/4 v8, 0x0

    :goto_b
    if-eqz v1, :cond_14

    sget-object v3, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    if-eq v1, v3, :cond_14

    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    or-int/2addr v8, v3

    iput v8, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_b

    :cond_14
    move-object v1, v2

    move-object v4, v10

    goto :goto_9

    :cond_15
    if-nez v1, :cond_19

    if-eqz v5, :cond_18

    iget-object v1, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    :goto_c
    if-eqz v1, :cond_16

    iget v8, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-ge v6, v8, :cond_16

    invoke-static {v1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    goto :goto_d

    :cond_17
    move-object v1, v12

    :goto_d
    iput-object v1, v3, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v3, v2, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    :goto_e
    move-object v1, v2

    move-object v4, v10

    const/4 v8, 0x0

    goto :goto_10

    :cond_18
    invoke-static {v13}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_19
    if-nez v5, :cond_1a

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v11, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_1a
    move-object v3, v5

    if-eqz v8, :cond_1b

    move v8, v14

    goto :goto_f

    :cond_1b
    const/4 v8, 0x0

    :goto_f
    xor-int/lit8 v1, v8, 0x1

    move-object v5, v6

    move v6, v1

    move-object v1, v2

    const/4 v2, 0x0

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto/16 :goto_8

    :goto_10
    iput-object v4, v1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/util/RandomAccess;

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    goto :goto_11

    :cond_1c
    move-object v5, v12

    :goto_11
    iput-object v5, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    sget-object v2, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    iget-object v3, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v3, :cond_1d

    goto :goto_12

    :cond_1d
    move-object v7, v3

    :goto_12
    iput-object v12, v7, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    iput-object v12, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    iput-object v12, v2, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eq v7, v2, :cond_1e

    goto :goto_13

    :cond_1e
    const-string/jumbo v2, "trimChain did not update the head"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_13
    iput-object v7, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    if-eqz v8, :cond_1f

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->syncCoordinators()V

    :cond_1f
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->updateParentData()V

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-nez v2, :cond_20

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0, v0}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_20
    return-void
.end method

.method public final attach$ui_release(Landroidx/compose/ui/node/Owner;)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot attach "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as it already is attached.  Tree: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Attaching to a different owner("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") than the parent\'s owner("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "). This tree: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Parent tree: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v4, 0x1

    if-nez v0, :cond_5

    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v4, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v5, :cond_5

    sget-object v6, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsPlacedInLookahead:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iput-object v6, v5, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    :cond_5
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v6, v5, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_6

    iget-object v7, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/node/InnerNodeCoordinator;

    goto :goto_4

    :cond_6
    move-object v7, v2

    :goto_4
    iput-object v7, v6, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_7

    iget v6, v0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    goto :goto_5

    :cond_7
    const/4 v6, -0x1

    :goto_5
    add-int/2addr v6, v4

    iput v6, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    if-eqz v6, :cond_8

    invoke-virtual {p0, v6}, Landroidx/compose/ui/node/LayoutNode;->applyModifier(Landroidx/compose/ui/Modifier;)V

    :cond_8
    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    move-result-object v6

    iget v7, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v6, v7, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v6, :cond_9

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-nez v6, :cond_a

    :cond_9
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    :cond_a
    invoke-virtual {p0, v6}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-nez v6, :cond_b

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_b
    iget-boolean v6, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-nez v6, :cond_c

    iget-object v6, v5, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    :goto_6
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui_release()V

    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_6

    :cond_c
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v6, v6, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_7
    if-ge v1, v6, :cond_d

    aget-object v8, v7, v1

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v8, p1}, Landroidx/compose/ui/node/LayoutNode;->attach$ui_release(Landroidx/compose/ui/node/Owner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-nez v1, :cond_e

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->runAttachLifecycle()V

    :cond_e
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_f
    iget-object v0, v5, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, v5, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    if-eqz v0, :cond_11

    iget-object v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v6, v4}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    iget-object v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    :cond_10
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_8

    :cond_11
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->updateParentData()V

    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-nez p1, :cond_13

    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui_release()V

    :cond_13
    iget-object p1, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_14

    iget-object v0, p1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->add(I)Z

    iget-object v0, p1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    iget-object p1, p1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v0, p1, p0, v4}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_14
    return-void
.end method

.method public final clearSubtreeIntrinsicsUsage$ui_release()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clearSubtreePlacementIntrinsicsUsage()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final debugTreeToString(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "|-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v2, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public final detach$ui_release()V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cannot detach node that is already detached!  Tree: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v5, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v3, :cond_2

    iput-object v5, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :cond_2
    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v3, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->previousUsedDuringParentLayout:Z

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    if-eqz v3, :cond_3

    iput-boolean v5, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->previousUsedDuringParentLayout:Z

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui_release()V

    iput-boolean v5, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v6, v6, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v8, v2

    :goto_0
    if-ge v8, v6, :cond_5

    aget-object v9, v7, v8

    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->detach$ui_release()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget-object v6, v3, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/TailModifierNode;

    :goto_1
    if-eqz v6, :cond_7

    iget-boolean v7, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    :cond_6
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_7
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    move-result-object v6

    iget v7, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v6, v7}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-object v7, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v8, v7, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v8, p0}, Lcom/google/android/gms/tasks/zza;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    iget-object v7, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v7, p0}, Lcom/google/android/gms/tasks/zza;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    iget-object v6, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v6, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    iput-boolean v5, v0, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroidx/compose/ui/spatial/RectManager;->remove(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v5, :cond_8

    iget-object v6, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    iget v7, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v6, v7}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    iget-object v5, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget v7, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v6, v5, v7, v2}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_8
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    iput v2, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    const v6, 0x7fffffff

    iput v6, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOrder:I

    iput v6, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->previousPlaceOrder:I

    iput-boolean v2, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v4, :cond_9

    iput v6, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    iput v6, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->previousPlaceOrder:I

    sget-object v5, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsNotPlaced:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iput-object v5, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    :cond_9
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->notifySemanticsChange$ui_release(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->onSemanticsChange()V

    :cond_a
    return-void
.end method

.method public final draw$ui_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->draw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final forceRemeasure()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean v1, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredOnce:Z

    if-eqz v1, :cond_1

    iget-wide v0, v0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    new-instance v2, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_3

    iget-wide v1, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    :cond_3
    return-void
.end method

.method public final getChildLookaheadMeasurables$ui_release()Ljava/util/List;
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_childDelegates:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v3, v5

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    iget v7, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-gt v7, v5, :cond_1

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v8, v7, v5

    aput-object v6, v7, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v2, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeRange(II)V

    iput-boolean v4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChildren$ui_release()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getFoldedChildren$ui_release()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutPending$ui_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    return p0
.end method

.method public final getMeasurePending$ui_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measurePending:Z

    return p0
.end method

.method public final getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object p0
.end method

.method public final getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    :goto_0
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getPlaceOrder$ui_release()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOrder:I

    return p0
.end method

.method public final getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    iget v2, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)V

    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    :cond_0
    return-object v1
.end method

.method public final get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->updateChildrenIfDirty$ui_release()V

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final hitTest-6fMxITs$ui_release(JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    move-result-wide v4

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void
.end method

.method public final insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/ui/node/LayoutNode;->exceptionMessageForParentingOrOwnership(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    iget-object p1, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {p1}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui_release()V

    iget-boolean p1, p2, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->attach$ui_release(Landroidx/compose/ui/node/Owner;)V

    :cond_3
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingCoordinatesDuringPlacement:I

    if-lez p1, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingCoordinatesDuringPlacement:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setChildrenAccessingCoordinatesDuringPlacement(I)V

    :cond_4
    return-void
.end method

.method public final invalidateLayer$ui_release()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "layer was not set"

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    :cond_7
    return-void
.end method

.method public final invalidateLayers$ui_release()V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    :goto_0
    if-eq v0, v1, :cond_1

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    :cond_2
    return-void
.end method

.method public final invalidateMeasurements$ui_release()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void

    :cond_0
    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void
.end method

.method public final invalidateSemantics$ui_release()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    if-eqz v0, :cond_2

    :goto_0
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v4, 0xd

    invoke-direct {v3, v4, p0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingSemantics:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v2, p0, v4, v3}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->notifySemanticsChange$ui_release(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->onSemanticsChange()V

    return-void
.end method

.method public final invalidateUnfoldedVirtualChildren()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    :cond_1
    return-void
.end method

.method public final isAttached()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPlaced()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    return p0
.end method

.method public final isPlacedInLookahead()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->isPlaced()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isValidOwnerScope()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result p0

    return p0
.end method

.method public final lookaheadReplace$ui_release()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->relayoutWithoutParentInProgress:Z

    iget-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->placedOnce:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "replace() called on item that was not placed"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->onNodePlacedCalled:Z

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->isPlaced()Z

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastPosition:J

    iget-object v4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastLayerBlock:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastExplicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeSelf-MLgxB_4$1(JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->onNodePlacedCalled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->relayoutWithoutParentInProgress:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->relayoutWithoutParentInProgress:Z

    throw v1
.end method

.method public final move$ui_release(III)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    if-le p1, p2, :cond_1

    add-int v1, p1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-le p1, p2, :cond_2

    add-int v2, p2, v0

    goto :goto_2

    :cond_2
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v4, v3, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v5, v3, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v3, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui_release()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    return-void
.end method

.method public final onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingCoordinatesDuringPlacement:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingCoordinatesDuringPlacement:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setChildrenAccessingCoordinatesDuringPlacement(I)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->detach$ui_release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v0, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object p1, p1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v1, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v1, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v0, v3, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui_release()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDeactivate()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    :cond_1
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/TailModifierNode;

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->reset$ui_release()V

    :cond_2
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui_release()V

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    :goto_1
    if-eqz v0, :cond_5

    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    :cond_4
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_7

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/compose/ui/spatial/RectManager;->remove(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v0, :cond_7

    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    iget v3, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v2, v3}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    iget-object v0, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v2, v0, p0, v1}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_7
    return-void
.end method

.method public final onRelease()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRelease()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onRelease()V

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->invoke()Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_3
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final onReuse()V
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReuse is only expected on attached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onReuse()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    :cond_2
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    goto :goto_2

    :cond_3
    iget-object v0, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    :goto_0
    if-eqz v0, :cond_5

    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->reset$ui_release()V

    :cond_4
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui_release()V

    iget-object v0, v2, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    :goto_1
    if-eqz v0, :cond_7

    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    :cond_6
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_7
    :goto_2
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    iput v3, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v3, :cond_8

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    move-result-object v3

    iget v5, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v3, v5, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_8
    iget-object v3, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui_release()V

    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->runAttachLifecycle()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui_release()V

    :cond_a
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNode;->rescheduleRemeasureOrRelayout$ui_release(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v2, :cond_d

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;->_autofillManager:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    if-eqz v3, :cond_c

    iget-object v5, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v6, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    iget-object v3, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    invoke-virtual {v3, v0}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6, v5, v0, v1}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_c

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v3, v0}, Landroidx/collection/MutableIntSet;->add(I)Z

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {v6, v5, v0, v4}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_c
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-wide v1, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->lastPosition:J

    invoke-virtual {v0, p0, v1, v2, v4}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V

    :cond_d
    return-void
.end method

.method public final onZSortedChildrenInvalidated$ui_release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui_release()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    return-void
.end method

.method public final removeAll$ui_release()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_0

    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, v3}, Landroidx/compose/ui/node/LayoutNode;->onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object p0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {p0}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final removeAt$ui_release(II)V
    .locals 2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be greater than 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_1

    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v1, v1, p2

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v1, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final replace$ui_release()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->relayoutWithoutParentInProgress:Z

    iget-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->placedOnce:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "replace called on unplaced item"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    iget-wide v2, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->lastPosition:J

    iget v4, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->lastZIndex:F

    iget-object v5, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->lastLayerBlock:Lkotlin/jvm/functions/Function1;

    iget-object v6, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->lastExplicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinator-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodePlacedCalled:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean p0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->relayoutWithoutParentInProgress:Z

    return-void

    :goto_1
    iput-boolean p0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->relayoutWithoutParentInProgress:Z

    throw v0
.end method

.method public final requestLookaheadRelayout$ui_release(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    :cond_0
    return-void
.end method

.method public final requestRelayout$ui_release(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    :cond_0
    return-void
.end method

.method public final resetSubtreeIntrinsicsUsage$ui_release()V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->resetSubtreeIntrinsicsUsage$ui_release()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui_release()V

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->onDensityChange()V

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-direct {p1, v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;-><init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    iput-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, p1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->ensureLookaheadDelegateCreated()V

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_3
    return-void
.end method

.method public final setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_0
    return-void
.end method

.method public final setModifier(Landroidx/compose/ui/Modifier;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_modifier:Landroidx/compose/ui/Modifier;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v0, :cond_2

    const-string v0, "modifier is updated when deactivated"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->applyModifier(Landroidx/compose/ui/Modifier;)V

    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui_release()V

    :cond_3
    return-void

    :cond_4
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public final setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    :goto_0
    if-eqz p0, :cond_8

    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move-object v1, p0

    move-object v2, p1

    :goto_1
    if-eqz v1, :cond_7

    instance-of v3, v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v3, :cond_0

    check-cast v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {v1}, Landroidx/compose/ui/node/PointerInputModifierNode;->onViewConfigurationChange()V

    goto :goto_4

    :cond_0
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_6

    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    move-object v1, v3

    goto :goto_3

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v1, p1

    :cond_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_5
    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->simpleIdentityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " measurePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateChildrenIfDirty$ui_release()V
    .locals 6

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v2, v2, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/room/concurrent/FileLock;

    iget-object v2, v2, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v3, v0

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4

    iget v5, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz p0, :cond_3

    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    :cond_3
    return-void
.end method
