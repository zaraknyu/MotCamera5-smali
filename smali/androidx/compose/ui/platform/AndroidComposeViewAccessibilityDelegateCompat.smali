.class public final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# static fields
.field public static final AccessibilityActionsResourceIds:Landroidx/collection/MutableIntList;


# instance fields
.field public final ExtraDataTestTraversalAfterVal:Ljava/lang/String;

.field public final ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

.field public SendRecurringAccessibilityEventsIntervalMillis:J

.field public accessibilityCursorPosition:I

.field public accessibilityFocusedVirtualViewId:I

.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final actionIdToLabel:Landroidx/collection/SparseArrayCompat;

.field public final boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public checkingForSemanticsChanges:Z

.field public currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public currentSemanticsNodesInvalidated:Z

.field public currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field public currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field public enabledServices:Ljava/util/List;

.field public final enabledStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;

.field public focusedVirtualViewId:I

.field public final handler:Landroid/os/Handler;

.field public hoveredVirtualViewId:I

.field public final idToAfterMap:Landroidx/collection/MutableIntIntMap;

.field public final idToBeforeMap:Landroidx/collection/MutableIntIntMap;

.field public final labelToActionId:Landroidx/collection/SparseArrayCompat;

.field public final nodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field public final onSendAccessibilityEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

.field public final paneDisplayed:Landroidx/collection/MutableIntSet;

.field public final pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

.field public pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

.field public final pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

.field public final previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field public previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

.field public previousTraversedNode:Ljava/lang/Integer;

.field public final scheduleScrollEventIfNeededLambda:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

.field public final scrollObservationScopes:Ljava/util/ArrayList;

.field public final semanticsChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

.field public sendingFocusAffectingEvent:Z

.field public final subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

.field public final touchExplorationStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;

.field public final urlSpanCache:Landroidx/core/view/MenuHostHelper;

.field public final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sget-object v2, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    new-instance v2, Landroidx/collection/MutableIntList;

    invoke-direct {v2, v0}, Landroidx/collection/MutableIntList;-><init>(I)V

    iget v3, v2, Landroidx/collection/MutableIntList;->_size:I

    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, 0x20

    invoke-virtual {v2, v4}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    iget-object v5, v2, Landroidx/collection/MutableIntList;->content:[I

    iget v6, v2, Landroidx/collection/MutableIntList;->_size:I

    if-eq v3, v6, :cond_0

    invoke-static {v4, v3, v6, v5, v5}, Lkotlin/collections/ArraysKt;->copyInto(III[I[I)V

    :cond_0
    const/4 v4, 0x0

    const/16 v6, 0xc

    invoke-static {v3, v4, v6, v1, v5}, Lkotlin/collections/ArraysKt;->copyInto$default(III[I[I)V

    iget v1, v2, Landroidx/collection/MutableIntList;->_size:I

    add-int/2addr v1, v0

    iput v1, v2, Landroidx/collection/MutableIntList;->_size:I

    sput-object v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/MutableIntList;

    return-void

    :cond_1
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    nop

    :array_0
    .array-data 4
        0x7f0a001b
        0x7f0a001c
        0x7f0a0027
        0x7f0a0032
        0x7f0a0035
        0x7f0a0036
        0x7f0a0037
        0x7f0a0038
        0x7f0a0039
        0x7f0a003a
        0x7f0a001d
        0x7f0a001e
        0x7f0a001f
        0x7f0a0020
        0x7f0a0021
        0x7f0a0022
        0x7f0a0023
        0x7f0a0024
        0x7f0a0025
        0x7f0a0026
        0x7f0a0028
        0x7f0a0029
        0x7f0a002a
        0x7f0a002b
        0x7f0a002c
        0x7f0a002d
        0x7f0a002e
        0x7f0a002f
        0x7f0a0030
        0x7f0a0031
        0x7f0a0033
        0x7f0a0034
    .end array-data
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 4

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-wide/16 v2, 0x64

    iput-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;

    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->touchExplorationStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledServices:Ljava/util/List;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;I)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    const/4 v0, 0x6

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    sget-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    const-string v1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v2, Landroidx/collection/MutableIntSet;

    invoke-direct {v2}, Landroidx/collection/MutableIntSet;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/MutableIntSet;

    new-instance v2, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v2}, Landroidx/collection/MutableIntIntMap;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    new-instance v2, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v2}, Landroidx/collection/MutableIntIntMap;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    const-string v2, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL"

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    const-string v2, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL"

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/core/view/MenuHostHelper;

    new-instance v2, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v2}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v2, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeededLambda:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    return-void
.end method

.method public static getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, ","

    const/16 v1, 0x3e

    invoke-static {v1, v0, p0}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, p0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz p0, :cond_5

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    move-object p0, v0

    :cond_4
    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz p0, :cond_5

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static final performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_1

    :cond_0
    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    iget-object p0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    const/4 p0, 0x0

    return p0
.end method

.method public static final populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object p0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z

    return-void
.end method

.method public static trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0x186a0

    if-gt v0, v1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const v0, 0x1869f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v5, :cond_14

    iget-object v5, v5, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v6, v5, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v7, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_1

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    move-result v0

    if-eq v0, v10, :cond_14

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v9, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    move-result v0

    if-eq v0, v10, :cond_14

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_2
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v7, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_11

    if-eqz v4, :cond_11

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    invoke-virtual {v4, v1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {v4, v7, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_10

    if-ltz v1, :cond_10

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_0

    :cond_3
    const v7, 0x7fffffff

    :goto_0
    if-lt v1, v7, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-static {v6}, Landroidx/compose/ui/platform/InvertMatrixKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v6

    if-nez v6, :cond_5

    goto/16 :goto_c

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_f

    add-int v11, v1, v10

    iget-object v12, v6, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v12, v12, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v11, v12, :cond_6

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v1

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v6, v11}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v11

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    iget-boolean v15, v15, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v15, :cond_7

    goto :goto_2

    :cond_7
    move-object v12, v9

    :goto_2
    if-eqz v12, :cond_8

    invoke-virtual {v12, v13, v14}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v13

    :cond_8
    invoke-virtual {v11, v13, v14}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v11

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v12

    iget v13, v11, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v14, v12, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v13, v13, v14

    const/4 v14, 0x1

    if-gez v13, :cond_9

    move v13, v14

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    :goto_3
    iget v15, v12, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v9, v11, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v9, v15, v9

    if-gez v9, :cond_a

    move v9, v14

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    :goto_4
    and-int/2addr v9, v13

    iget v13, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v15, v12, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_b

    move v13, v14

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_5
    and-int/2addr v9, v13

    iget v13, v12, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v15, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_c

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    :goto_6
    and-int/2addr v9, v14

    if-eqz v9, :cond_d

    invoke-virtual {v11, v12}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_e

    iget v11, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v12, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v13, v11

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    const-wide v16, 0xffffffffL

    and-long v11, v11, v16

    or-long/2addr v11, v13

    iget-object v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v13, v11, v12}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v11

    iget v14, v9, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v9, v9, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    move/from16 p4, v9

    int-to-long v8, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    move/from16 v18, v1

    int-to-long v0, v14

    shl-long/2addr v8, v15

    and-long v0, v0, v16

    or-long/2addr v0, v8

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v0

    new-instance v8, Landroid/graphics/RectF;

    shr-long v13, v11, v15

    long-to-int v9, v13

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    and-long v11, v11, v16

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    shr-long v12, v0, v15

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    and-long v0, v0, v16

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-direct {v8, v9, v11, v12, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_8

    :cond_e
    move/from16 v18, v1

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_10
    :goto_a
    const-string v0, "AccessibilityDelegate"

    const-string v1, "Invalid arguments for accessibility character locations"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v7, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v4, :cond_13

    const-string v1, "androidx.compose.ui.semantics.testTag"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v7, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v9, 0x0

    goto :goto_b

    :cond_12
    move-object v9, v0

    :goto_b
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_14

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    :cond_13
    const-string v0, "androidx.compose.ui.semantics.id"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget v1, v5, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_14
    :goto_c
    return-void
.end method

.method public final boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;
    .locals 9

    iget-object p1, p1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v7, p1

    shl-long/2addr v2, v4

    and-long/2addr v7, v5

    or-long/2addr v2, v7

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide p0

    new-instance v2, Landroid/graphics/Rect;

    shr-long v7, v0, v4

    long-to-int v3, v7

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v3, v7

    float-to-int v3, v3

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    shr-long v7, p0, v4

    long-to-int v1, v7

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-int v1, v1

    and-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    invoke-direct {v2, v3, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public final boundsUpdatesEventLoop$ui_release(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    iget v3, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v4, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Landroidx/collection/MutableIntSet;

    iget-object v7, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    move-object v7, v1

    move-object v1, v0

    move v0, v5

    move v9, v6

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v7

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v4, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Landroidx/collection/MutableIntSet;

    iget-object v7, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v7

    move-object v7, v1

    move-object v1, v15

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    new-instance v0, Landroidx/collection/MutableIntSet;

    invoke-direct {v0}, Landroidx/collection/MutableIntSet;-><init>()V

    iget-object v4, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-direct {v7, v4}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    :goto_1
    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iput-object v0, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Landroidx/collection/MutableIntSet;

    iput-object v7, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v6, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    invoke-virtual {v7, v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object v15, v4

    move-object v4, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v8, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    if-eqz v0, :cond_8

    :try_start_3
    iget v0, v8, Landroidx/collection/ArraySet;->_size:I

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    if-ge v10, v0, :cond_5

    iget-object v11, v8, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1, v11, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendSubtreeChangeAccessibilityEvents(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/MutableIntSet;)V

    invoke-virtual {v1, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendTypeViewScrolledAccessibilityEvent(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_5
    iput v9, v4, Landroidx/collection/MutableIntSet;->_size:I

    iget-object v0, v4, Landroidx/collection/MutableIntSet;->metadata:[J

    sget-object v9, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v0, v9, :cond_6

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v0, v9, v10}, Lkotlin/collections/ArraysKt;->fill$default([JJ)V

    iget-object v0, v4, Landroidx/collection/MutableIntSet;->metadata:[J

    iget v9, v4, Landroidx/collection/MutableIntSet;->_capacity:I

    shr-int/lit8 v10, v9, 0x3

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x3

    aget-wide v11, v0, v10

    const-wide/16 v13, 0xff

    shl-long/2addr v13, v9

    not-long v5, v13

    and-long/2addr v5, v11

    or-long/2addr v5, v13

    aput-wide v5, v0, v10

    :cond_6
    iget v0, v4, Landroidx/collection/MutableIntSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v5, v4, Landroidx/collection/MutableIntSet;->_size:I

    sub-int/2addr v0, v5

    iput v0, v4, Landroidx/collection/MutableIntSet;->growthLimit:I

    iget-boolean v0, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    if-nez v0, :cond_7

    const/4 v9, 0x1

    iput-boolean v9, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v5, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    move v9, v6

    :goto_4
    invoke-virtual {v8}, Landroidx/collection/ArraySet;->clear()V

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0}, Landroidx/collection/MutableIntObjectMap;->clear()V

    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0}, Landroidx/collection/MutableIntObjectMap;->clear()V

    iget-wide v5, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->SendRecurringAccessibilityEventsIntervalMillis:J

    iput-object v1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iput-object v4, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Landroidx/collection/MutableIntSet;

    iput-object v7, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    const/4 v0, 0x2

    iput v0, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v5, v3, :cond_9

    :goto_5
    return-object v3

    :cond_9
    :goto_6
    move v5, v0

    move-object v0, v4

    move v6, v9

    goto/16 :goto_1

    :cond_a
    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_7
    iget-object v1, v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->clear()V

    throw v0
.end method

.method public final canScroll-0AR0LA0$ui_release(JIZ)Z
    .locals 21

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v3

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v0

    const-wide v7, 0x7fffff007fffffL

    add-long/2addr v5, v7

    const-wide v7, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_11

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    :goto_0
    iget-object v6, v3, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v7, v3

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    aget-wide v10, v3, v8

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_f

    sub-int v12, v8, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_d

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_b

    shl-int/lit8 v15, v8, 0x3

    add-int/2addr v15, v14

    aget-object v15, v6, v15

    check-cast v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/16 v16, 0x0

    iget-object v4, v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move/from16 p4, v13

    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    iget v0, v4, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/16 v4, 0x20

    move/from16 v17, v0

    move/from16 v18, v1

    shr-long v0, p1, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v19, 0xffffffffL

    move v4, v0

    and-long v0, p1, v19

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpl-float v1, v4, v5

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move/from16 v1, v16

    :goto_3
    cmpg-float v4, v4, v17

    if-gez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move/from16 v4, v16

    :goto_4
    and-int/2addr v1, v4

    cmpl-float v4, v0, v13

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    move/from16 v4, v16

    :goto_5
    and-int/2addr v1, v4

    cmpg-float v0, v0, v18

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    move/from16 v0, v16

    :goto_6
    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    iget-object v0, v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    iget-object v1, v0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    if-gez p3, :cond_a

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_c

    goto :goto_7

    :cond_b
    move/from16 p4, v13

    const/16 v16, 0x0

    :cond_c
    :goto_8
    shr-long v10, v10, p4

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v0, p1

    move/from16 v13, p4

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_d
    move v0, v13

    const/16 v16, 0x0

    if-ne v12, v0, :cond_e

    goto :goto_9

    :cond_e
    return v9

    :cond_f
    const/16 v16, 0x0

    :goto_9
    if-eq v8, v7, :cond_10

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, p1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_10
    return v9

    :cond_11
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :goto_a
    return v16
.end method

.method public final checkForSemanticsChanges()V
    .locals 2

    const-string/jumbo v0, "sendAccessibilitySemanticsStructureChangeEvents"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string/jumbo v0, "sendSemanticsPropertyChangeEvents"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendSemanticsPropertyChangeEvents(Landroidx/collection/IntObjectMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string/jumbo v0, "updateSemanticsNodesCopyAndPanes"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateSemanticsNodesCopyAndPanes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    const-string v0, "android.view.View"

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object p1, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    :cond_0
    return-object p2
.end method

.method public final createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Lcom/google/android/gms/tasks/zzs;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object p0
.end method

.method public final getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2

    iget-object v0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v1, p1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextRange;

    iget-wide p0, p0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    return p0
.end method

.method public final getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2

    iget-object v0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v1, p1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextRange;

    iget-wide p0, p0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    return p0
.end method

.method public final getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;
    .locals 7

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/platform/InvertMatrixKt;->getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticComparators:[Ljava/util/Comparator;

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v2}, Landroidx/collection/MutableIntIntMap;->clear()V

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v3}, Landroidx/collection/MutableIntIntMap;->clear()V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v5, v4, v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->subtreeSortedByGeometryGrouping(ZLjava/util/List;Landroidx/collection/IntObjectMap;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v4, 0x1

    if-gt v4, v1, :cond_1

    :goto_1
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    iget v5, v5, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    iget v6, v6, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v2, v5, v6}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v3, v6, v5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    if-eq v4, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method

.method public final isEnabled$ui_release()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final semanticsNodeIdToAccessibilityVirtualNodeId(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    iget p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return p1
.end method

.method public final sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    new-instance v3, Landroidx/collection/MutableIntSet;

    invoke-direct {v3}, Landroidx/collection/MutableIntSet;-><init>()V

    const/4 v4, 0x4

    invoke-static {v4, v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v11

    iget v10, v10, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v11, v10}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v2, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    invoke-virtual {v11, v10}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_0
    invoke-virtual {v3, v10}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v2, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    iget-object v5, v2, Landroidx/collection/MutableIntSet;->elements:[I

    iget-object v2, v2, Landroidx/collection/MutableIntSet;->metadata:[J

    array-length v7, v2

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_6

    move v9, v8

    :goto_1
    aget-wide v10, v2, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    sub-int v12, v9, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v8

    :goto_2
    if-ge v14, v12, :cond_4

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget v15, v5, v15

    invoke-virtual {v3, v15}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_3
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    if-ne v12, v13, :cond_6

    :cond_5
    if-eq v9, v7, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v4, v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_3
    if-ge v8, v2, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v4

    iget v5, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    iget v5, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    throw p1
.end method

.method public final sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled$ui_release()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, ","

    const/16 p3, 0x3e

    invoke-static {p3, p2, p4}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final sendPaneChangeEvents(IILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result p1

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public final sendPendingTextTraversedAtGranularityEvent(I)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    iget v2, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->traverseTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    iget p1, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result p1

    const/high16 v2, 0x20000

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->fromIndex:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->toIndex:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->action:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    iget v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->granularity:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    return-void
.end method

.method public final sendSemanticsPropertyChangeEvents(Landroidx/collection/IntObjectMap;)V
    .locals 58

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v6, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v11, v6, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v1, v11

    const/4 v12, 0x2

    add-int/lit8 v13, v1, -0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ltz v13, :cond_57

    move v15, v14

    :goto_0
    aget-wide v3, v11, v15

    move/from16 v16, v12

    move/from16 v17, v13

    not-long v12, v3

    const/16 v18, 0x7

    shl-long v12, v12, v18

    and-long/2addr v12, v3

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v19

    cmp-long v1, v12, v19

    if-eqz v1, :cond_56

    sub-int v1, v15, v17

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v13, v1, 0x8

    move-wide/from16 v21, v3

    move v1, v14

    :goto_1
    if-ge v1, v13, :cond_55

    const-wide/16 v23, 0xff

    and-long v3, v21, v23

    const-wide/16 v25, 0x80

    cmp-long v3, v3, v25

    if-gez v3, :cond_54

    shl-int/lit8 v3, v15, 0x3

    add-int/2addr v3, v1

    aget v3, v10, v3

    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    if-nez v4, :cond_0

    goto/16 :goto_2f

    :cond_0
    iget-object v4, v4, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v6, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v14, v27

    check-cast v14, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/16 v27, 0x0

    if-eqz v14, :cond_1

    iget-object v14, v14, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_2

    :cond_1
    move-object/from16 v14, v27

    :goto_2
    if-eqz v14, :cond_53

    move/from16 v29, v12

    iget-object v12, v14, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v6, v14, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-object/from16 v30, v10

    iget v10, v14, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    move-object/from16 v31, v11

    iget-object v11, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    move/from16 v32, v15

    iget-object v15, v11, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    move-object/from16 v33, v15

    iget-object v15, v11, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    move-object/from16 v34, v15

    iget-object v15, v11, Landroidx/collection/MutableScatterMap;->metadata:[J

    move/from16 v35, v1

    array-length v1, v15

    add-int/lit8 v1, v1, -0x2

    move-object/from16 v36, v15

    if-ltz v1, :cond_4d

    move-object/from16 v41, v12

    move/from16 v40, v13

    const/4 v15, 0x0

    const/16 v39, 0x0

    :goto_3
    aget-wide v12, v36, v15

    move-object/from16 v42, v14

    move/from16 v43, v15

    not-long v14, v12

    shl-long v14, v14, v18

    and-long/2addr v14, v12

    and-long v14, v14, v19

    cmp-long v14, v14, v19

    if-eqz v14, :cond_4c

    sub-int v15, v43, v1

    not-int v14, v15

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_4b

    and-long v44, v12, v23

    cmp-long v44, v44, v25

    if-gez v44, :cond_4a

    shl-int/lit8 v44, v43, 0x3

    add-int v44, v44, v15

    aget-object v45, v33, v44

    move/from16 v46, v1

    aget-object v1, v34, v44

    move-object/from16 v44, v4

    move-object/from16 v4, v45

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-wide/from16 v47, v12

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_5

    :cond_2
    move/from16 v45, v15

    const/4 v15, 0x0

    goto :goto_9

    :cond_3
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v45, v15

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v13, :cond_5

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    move/from16 v50, v13

    move-object/from16 v13, v49

    check-cast v13, Landroidx/compose/ui/platform/ScrollObservationScope;

    iget v13, v13, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    if-ne v13, v3, :cond_4

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/platform/ScrollObservationScope;

    goto :goto_7

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v50

    goto :goto_6

    :cond_5
    move-object/from16 v13, v27

    :goto_7
    if-eqz v13, :cond_6

    const/4 v15, 0x0

    goto :goto_8

    :cond_6
    new-instance v13, Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-direct {v13, v3, v9}, Landroidx/compose/ui/platform/ScrollObservationScope;-><init>(ILjava/util/ArrayList;)V

    const/4 v15, 0x1

    :goto_8
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    if-nez v15, :cond_9

    invoke-virtual {v5, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    move-object/from16 v13, v27

    :cond_7
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    :goto_a
    move-object v13, v5

    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move-object/from16 v15, v41

    move-object/from16 v41, v42

    const/4 v12, 0x0

    const/16 v38, 0x1

    move-object v8, v2

    move v7, v3

    move/from16 v2, v46

    goto/16 :goto_2a

    :cond_9
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v4, v29

    invoke-virtual {v0, v3, v4, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    goto :goto_a

    :cond_a
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_b

    :cond_b
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    :goto_b
    if-eqz v13, :cond_c

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    const/16 v13, 0x800

    const/16 v15, 0x8

    invoke-static {v0, v1, v13, v7, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-static {v0, v1, v13, v2, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_a

    :cond_c
    const/16 v15, 0x8

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    const/16 v13, 0x800

    invoke-static {v0, v1, v13, v7, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-static {v0, v1, v13, v2, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_a

    :cond_d
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v49, v8

    const/4 v8, 0x4

    if-eqz v15, :cond_1a

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    move-object/from16 v1, v27

    :cond_e
    check-cast v1, Landroidx/compose/ui/semantics/Role;

    if-nez v1, :cond_10

    :cond_f
    const/4 v1, 0x0

    goto :goto_c

    :cond_10
    iget v1, v1, Landroidx/compose/ui/semantics/Role;->value:I

    if-ne v1, v8, :cond_f

    const/4 v1, 0x1

    :goto_c
    if-eqz v1, :cond_19

    invoke-virtual {v11, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    move-object/from16 v1, v27

    :cond_11
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    new-instance v4, Landroidx/compose/ui/semantics/SemanticsNode;

    move-object/from16 v13, v42

    iget-object v8, v13, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v15, v41

    const/4 v12, 0x1

    invoke-direct {v4, v8, v12, v15, v6}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v12}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_12

    move-object/from16 v8, v27

    :cond_12
    check-cast v8, Ljava/util/List;

    const/16 v12, 0x3e

    move-object/from16 v41, v4

    const-string v4, ","

    if-eqz v8, :cond_13

    invoke-static {v12, v4, v8}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_13
    move-object/from16 v8, v27

    :goto_d
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    move-object/from16 v41, v13

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v12, v12, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_14

    move-object/from16 v12, v27

    :cond_14
    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_15

    const/16 v13, 0x3e

    invoke-static {v13, v4, v12}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_15
    move-object/from16 v4, v27

    :goto_e
    if-eqz v8, :cond_16

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :goto_f
    move-object v8, v2

    move-object v13, v5

    move-object/from16 v54, v7

    move/from16 v2, v46

    const/4 v12, 0x0

    const/16 v38, 0x1

    :goto_10
    move v7, v3

    goto/16 :goto_2a

    :cond_18
    move-object/from16 v15, v41

    move-object/from16 v41, v42

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    const/16 v4, 0x8

    const/16 v13, 0x800

    invoke-static {v0, v1, v13, v2, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_f

    :cond_19
    move-object/from16 v15, v41

    move-object/from16 v41, v42

    const/16 v4, 0x8

    const/16 v13, 0x800

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-static {v0, v1, v13, v7, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-static {v0, v1, v13, v2, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_f

    :cond_1a
    move/from16 v37, v8

    move-object/from16 v15, v41

    move-object/from16 v41, v42

    const/16 v13, 0x800

    const/16 v38, 0x1

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v4

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v4, v13, v8, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z

    move-object v8, v2

    move-object v13, v5

    move-object/from16 v54, v7

    move/from16 v2, v46

    const/4 v12, 0x0

    goto :goto_10

    :cond_1b
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const-wide v50, 0xffffffffL

    const/16 v42, 0x20

    const-string v52, ""

    if-eqz v13, :cond_2c

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    move-object/from16 v1, v27

    :cond_1c
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v1, :cond_1d

    goto :goto_11

    :cond_1d
    move-object/from16 v1, v52

    :goto_11
    invoke-virtual {v11, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1e

    move-object/from16 v4, v27

    :cond_1e
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v4, :cond_1f

    goto :goto_12

    :cond_1f
    move-object/from16 v4, v52

    :goto_12
    invoke-static {v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move-object/from16 v53, v2

    if-le v12, v13, :cond_20

    move v2, v13

    goto :goto_13

    :cond_20
    move v2, v12

    :goto_13
    move-object/from16 v54, v7

    const/4 v7, 0x0

    :goto_14
    move/from16 v52, v2

    if-ge v7, v2, :cond_22

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move/from16 v55, v12

    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v2, v12, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v52

    move/from16 v12, v55

    goto :goto_14

    :cond_22
    move/from16 v55, v12

    :goto_15
    const/4 v2, 0x0

    :goto_16
    sub-int v12, v52, v7

    if-ge v2, v12, :cond_24

    add-int/lit8 v12, v55, -0x1

    sub-int/2addr v12, v2

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    add-int/lit8 v56, v13, -0x1

    move/from16 v57, v2

    sub-int v2, v56, v57

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v12, v2, :cond_23

    goto :goto_17

    :cond_23
    add-int/lit8 v2, v57, 0x1

    goto :goto_16

    :cond_24
    move/from16 v57, v2

    :goto_17
    sub-int v12, v55, v57

    sub-int/2addr v12, v7

    sub-int v2, v13, v57

    sub-int/2addr v2, v7

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v5, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v52

    invoke-virtual {v11, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move/from16 v55, v4

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v5, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    if-nez v52, :cond_25

    if-eqz v55, :cond_25

    move/from16 v56, v38

    goto :goto_18

    :cond_25
    const/16 v56, 0x0

    :goto_18
    if-eqz v4, :cond_26

    if-eqz v52, :cond_26

    if-nez v55, :cond_26

    move/from16 v52, v38

    goto :goto_19

    :cond_26
    const/16 v52, 0x0

    :goto_19
    if-nez v56, :cond_28

    if-eqz v52, :cond_27

    goto :goto_1a

    :cond_27
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v4

    const/16 v13, 0x10

    invoke-virtual {v0, v4, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v3

    move-object v13, v5

    move-object/from16 v2, v53

    goto :goto_1b

    :cond_28
    :goto_1a
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v2, v3

    move-object/from16 v3, v53

    move v7, v2

    move-object v13, v5

    move-object v5, v8

    move-object/from16 v2, v53

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    :goto_1b
    const-string v1, "android.widget.EditText"

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    if-nez v56, :cond_2a

    if-eqz v52, :cond_29

    goto :goto_1e

    :cond_29
    move-object v8, v2

    :goto_1c
    move/from16 v2, v46

    :goto_1d
    const/4 v12, 0x0

    goto/16 :goto_2a

    :cond_2a
    :goto_1e
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextRange;

    move-object/from16 v53, v2

    iget-wide v1, v1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    move-wide/from16 v55, v1

    shr-long v1, v55, v42

    long-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    and-long v1, v55, v50

    long-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :goto_1f
    move/from16 v2, v46

    move-object/from16 v8, v53

    goto :goto_1d

    :cond_2b
    move-object/from16 v53, v2

    move-object v13, v5

    move-object/from16 v54, v7

    move v7, v3

    invoke-virtual {v0, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x800

    const/16 v4, 0x8

    invoke-static {v0, v1, v3, v2, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_1f

    :cond_2c
    move-object/from16 v53, v2

    move-object v13, v5

    move-object/from16 v54, v7

    move v7, v3

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v11, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    move-object/from16 v1, v27

    :cond_2d
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v1, :cond_2f

    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    if-nez v1, :cond_2e

    goto :goto_20

    :cond_2e
    move-object/from16 v52, v1

    :cond_2f
    :goto_20
    invoke-virtual {v6, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextRange;

    iget-wide v1, v1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    move-wide v2, v1

    invoke-virtual {v0, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    shr-long v4, v2, v42

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    and-long v2, v2, v50

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v52 .. v52}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    move-object/from16 v8, v53

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPendingTextTraversedAtGranularityEvent(I)V

    goto/16 :goto_1c

    :cond_30
    move/from16 v2, v46

    move-object/from16 v8, v53

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move/from16 v3, v38

    goto :goto_21

    :cond_31
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_21
    if-eqz v3, :cond_37

    invoke-virtual {v0, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v1, :cond_33

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/ScrollObservationScope;

    iget v4, v4, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    if-ne v4, v7, :cond_32

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ScrollObservationScope;

    goto :goto_23

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_33
    move-object/from16 v1, v27

    :goto_23
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34

    move-object/from16 v3, v27

    :cond_34
    check-cast v3, Landroidx/compose/ui/semantics/ScrollAxisRange;

    iput-object v3, v1, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v11, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_35

    move-object/from16 v3, v27

    :cond_35
    check-cast v3, Landroidx/compose/ui/semantics/ScrollAxisRange;

    iput-object v3, v1, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    iget-object v3, v1, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_1d

    :cond_36
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v3

    new-instance v4, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v5, 0x12

    invoke-direct {v4, v5, v1, v0}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeededLambda:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    invoke-virtual {v3, v1, v5, v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_1d

    :cond_37
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_24

    :cond_38
    const/16 v4, 0x8

    :goto_24
    invoke-virtual {v0, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    const/16 v3, 0x800

    invoke-static {v0, v1, v3, v8, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto/16 :goto_1d

    :cond_39
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v6, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v13, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3a

    move-object/from16 v3, v27

    :cond_3a
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3f

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_3e

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_3d

    invoke-interface {v4, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_25

    :cond_3b
    const/16 v39, 0x0

    goto/16 :goto_1d

    :cond_3c
    :goto_25
    move/from16 v39, v38

    goto/16 :goto_1d

    :cond_3d
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3e
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3f
    const/4 v12, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_29

    :cond_40
    const/4 v12, 0x0

    instance-of v3, v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v3, :cond_47

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-virtual {v13, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_41

    move-object/from16 v3, v27

    :cond_41
    sget-object v4, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticComparators:[Ljava/util/Comparator;

    if-ne v1, v3, :cond_42

    goto :goto_27

    :cond_42
    instance-of v4, v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-nez v4, :cond_43

    goto :goto_26

    :cond_43
    iget-object v4, v1, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    iget-object v5, v3, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    iget-object v3, v3, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_26

    :cond_44
    iget-object v1, v1, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    if-nez v1, :cond_45

    if-eqz v3, :cond_45

    goto :goto_26

    :cond_45
    if-eqz v1, :cond_46

    if-nez v3, :cond_46

    :goto_26
    move v1, v12

    goto :goto_28

    :cond_46
    :goto_27
    move/from16 v1, v38

    :goto_28
    if-nez v1, :cond_48

    :cond_47
    :goto_29
    move/from16 v39, v38

    goto :goto_2a

    :cond_48
    move/from16 v39, v12

    :cond_49
    :goto_2a
    const/16 v4, 0x8

    goto :goto_2b

    :cond_4a
    move-object/from16 v44, v4

    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move-wide/from16 v47, v12

    move/from16 v45, v15

    move-object/from16 v15, v41

    move-object/from16 v41, v42

    const/4 v12, 0x0

    const/16 v38, 0x1

    move-object v8, v2

    move v7, v3

    move-object v13, v5

    move v2, v1

    goto :goto_2a

    :goto_2b
    shr-long v28, v47, v4

    add-int/lit8 v1, v45, 0x1

    move v3, v7

    move-object v5, v13

    move-wide/from16 v12, v28

    move-object/from16 v42, v41

    move-object/from16 v7, v54

    move/from16 v29, v4

    move-object/from16 v41, v15

    move-object/from16 v4, v44

    move v15, v1

    move v1, v2

    move-object v2, v8

    move-object/from16 v8, v49

    goto/16 :goto_4

    :cond_4b
    move-object/from16 v44, v4

    move-object v13, v5

    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move/from16 v4, v29

    move-object/from16 v15, v41

    move-object/from16 v41, v42

    const/4 v12, 0x0

    const/16 v38, 0x1

    move-object v8, v2

    move v7, v3

    move v2, v1

    if-ne v14, v4, :cond_4e

    :goto_2c
    move/from16 v1, v43

    goto :goto_2d

    :cond_4c
    move-object/from16 v44, v4

    move-object v13, v5

    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move-object/from16 v15, v41

    move-object/from16 v41, v42

    const/4 v12, 0x0

    const/16 v38, 0x1

    move-object v8, v2

    move v7, v3

    move v2, v1

    goto :goto_2c

    :goto_2d
    if-eq v1, v2, :cond_4e

    add-int/lit8 v1, v1, 0x1

    move v3, v7

    move-object v5, v13

    move-object/from16 v14, v41

    move-object/from16 v4, v44

    move-object/from16 v7, v54

    const/16 v29, 0x8

    move-object/from16 v41, v15

    move v15, v1

    move v1, v2

    move-object v2, v8

    move-object/from16 v8, v49

    goto/16 :goto_3

    :cond_4d
    move-object/from16 v44, v4

    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move/from16 v40, v13

    move-object/from16 v41, v14

    const/4 v12, 0x0

    const/16 v38, 0x1

    move-object v8, v2

    move v7, v3

    move/from16 v39, v12

    :cond_4e
    if-nez v39, :cond_51

    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticComparators:[Ljava/util/Comparator;

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v3, v3, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move/from16 v15, v38

    goto :goto_2e

    :cond_50
    move v15, v12

    :goto_2e
    move/from16 v39, v15

    :cond_51
    if-eqz v39, :cond_52

    invoke-virtual {v0, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    const/16 v4, 0x8

    const/16 v13, 0x800

    invoke-static {v0, v1, v13, v8, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_30

    :cond_52
    const/16 v4, 0x8

    goto :goto_30

    :cond_53
    const-string v0, "no value for specified key"

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_54
    :goto_2f
    move/from16 v35, v1

    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move v4, v12

    move/from16 v40, v13

    move v12, v14

    move/from16 v32, v15

    move-object v8, v2

    :goto_30
    shr-long v21, v21, v4

    add-int/lit8 v1, v35, 0x1

    move-object/from16 v6, p1

    move-object v2, v8

    move v14, v12

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move/from16 v15, v32

    move/from16 v13, v40

    move-object/from16 v8, v49

    move-object/from16 v7, v54

    move v12, v4

    goto/16 :goto_1

    :cond_55
    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move v4, v12

    move v1, v13

    move v12, v14

    move/from16 v32, v15

    move-object v8, v2

    if-ne v1, v4, :cond_57

    move/from16 v14, v32

    :goto_31
    move/from16 v1, v17

    goto :goto_32

    :cond_56
    move-object/from16 v54, v7

    move-object/from16 v49, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move v12, v14

    move-object v8, v2

    move v14, v15

    goto :goto_31

    :goto_32
    if-eq v14, v1, :cond_57

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v6, p1

    move v13, v1

    move-object v2, v8

    move v14, v12

    move/from16 v12, v16

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v8, v49

    move-object/from16 v7, v54

    goto/16 :goto_0

    :cond_57
    return-void
.end method

.method public final sendSubtreeChangeAccessibilityEvents(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/MutableIntSet;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    const/4 v3, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-boolean v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-ne v4, v3, :cond_6

    move-object v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    move-object p1, v2

    :cond_8
    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-virtual {p2, p1}, Landroidx/collection/MutableIntSet;->add(I)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result p1

    const/16 p2, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final sendTypeViewScrolledAccessibilityEvent(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/16 v2, 0x1000

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    iget-object v0, v0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    iget-object v0, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public final setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z
    .locals 10

    iget-object v0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget v1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/AccessibilityAction;

    iget-object p0, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast p0, Lkotlin/jvm/functions/Function3;

    if-eqz p0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-ne p2, p3, :cond_1

    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    :goto_0
    return v3

    :cond_3
    if-ltz p2, :cond_4

    if-ne p2, p3, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p3, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, -0x1

    :goto_1
    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_5

    move v3, p2

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v5

    const/4 p1, 0x0

    if-eqz v3, :cond_6

    iget p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v6, p3

    goto :goto_2

    :cond_6
    move-object v6, p1

    :goto_2
    if-eqz v3, :cond_7

    iget p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v7, p3

    goto :goto_3

    :cond_7
    move-object v7, p1

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_8
    move-object v4, p0

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPendingTextTraversedAtGranularityEvent(I)V

    return p2
.end method

.method public final updateSemanticsNodesCopyAndPanes()V
    .locals 32

    move-object/from16 v0, p0

    new-instance v1, Landroidx/collection/MutableIntSet;

    invoke-direct {v1}, Landroidx/collection/MutableIntSet;-><init>()V

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/MutableIntSet;

    iget-object v3, v2, Landroidx/collection/MutableIntSet;->elements:[I

    iget-object v4, v2, Landroidx/collection/MutableIntSet;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    const/16 v14, 0x8

    if-ltz v5, :cond_8

    const/4 v7, 0x0

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :goto_0
    aget-wide v9, v4, v7

    const/4 v8, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v11, v9

    shl-long/2addr v11, v8

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_7

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    and-long v22, v9, v18

    cmp-long v13, v22, v16

    if-gez v13, :cond_4

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget v13, v3, v13

    move/from16 v22, v8

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/16 v23, 0x0

    if-eqz v8, :cond_0

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_2

    :cond_0
    move-object/from16 v8, v23

    :goto_2
    if-eqz v8, :cond_1

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v15}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_1
    invoke-virtual {v1, v13}, Landroidx/collection/MutableIntSet;->add(I)Z

    invoke-virtual {v6, v13}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    if-eqz v8, :cond_3

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v15}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v23, v8

    :goto_3
    check-cast v23, Ljava/lang/String;

    :cond_3
    move-object/from16 v8, v23

    const/16 v15, 0x20

    invoke-virtual {v0, v13, v15, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    goto :goto_4

    :cond_4
    move/from16 v22, v8

    :cond_5
    :goto_4
    shr-long/2addr v9, v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v22

    goto :goto_1

    :cond_6
    move/from16 v22, v8

    if-ne v11, v14, :cond_9

    goto :goto_5

    :cond_7
    move/from16 v22, v8

    :goto_5
    if-eq v7, v5, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    :cond_9
    iget-object v3, v1, Landroidx/collection/MutableIntSet;->elements:[I

    iget-object v1, v1, Landroidx/collection/MutableIntSet;->metadata:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_11

    const/4 v5, 0x0

    :goto_6
    aget-wide v7, v1, v5

    not-long v9, v7

    shl-long v9, v9, v22

    and-long/2addr v9, v7

    and-long v9, v9, v20

    cmp-long v9, v9, v20

    if-eqz v9, :cond_10

    sub-int v9, v5, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_f

    and-long v11, v7, v18

    cmp-long v11, v11, v16

    if-gez v11, :cond_d

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    move-result v12

    const v13, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v12, v13

    shl-int/lit8 v13, v12, 0x10

    xor-int/2addr v12, v13

    and-int/lit8 v13, v12, 0x7f

    iget v15, v2, Landroidx/collection/MutableIntSet;->_capacity:I

    ushr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v15

    move/from16 v24, v14

    const/16 v23, 0x0

    :goto_8
    iget-object v14, v2, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v25, v12, 0x3

    and-int/lit8 v26, v12, 0x7

    move-object/from16 v27, v1

    shl-int/lit8 v1, v26, 0x3

    aget-wide v28, v14, v25

    ushr-long v28, v28, v1

    add-int/lit8 v25, v25, 0x1

    aget-wide v25, v14, v25

    rsub-int/lit8 v14, v1, 0x40

    shl-long v25, v25, v14

    move-wide/from16 v30, v7

    int-to-long v7, v1

    neg-long v7, v7

    const/16 v1, 0x3f

    shr-long/2addr v7, v1

    and-long v7, v25, v7

    or-long v7, v28, v7

    move v1, v15

    int-to-long v14, v13

    const-wide v25, 0x101010101010101L

    mul-long v14, v14, v25

    xor-long/2addr v14, v7

    sub-long v25, v14, v25

    not-long v14, v14

    and-long v14, v25, v14

    and-long v14, v14, v20

    :goto_9
    const-wide/16 v25, 0x0

    cmp-long v28, v14, v25

    if-eqz v28, :cond_b

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v25

    shr-int/lit8 v25, v25, 0x3

    add-int v25, v12, v25

    and-int v25, v25, v1

    move/from16 v28, v1

    iget-object v1, v2, Landroidx/collection/MutableIntSet;->elements:[I

    aget v1, v1, v25

    if-ne v1, v11, :cond_a

    :goto_a
    move/from16 v1, v25

    goto :goto_b

    :cond_a
    const-wide/16 v25, 0x1

    sub-long v25, v14, v25

    and-long v14, v14, v25

    move/from16 v1, v28

    goto :goto_9

    :cond_b
    move/from16 v28, v1

    not-long v14, v7

    const/4 v1, 0x6

    shl-long/2addr v14, v1

    and-long/2addr v7, v14

    and-long v7, v7, v20

    cmp-long v1, v7, v25

    if-eqz v1, :cond_c

    const/16 v25, -0x1

    goto :goto_a

    :goto_b
    if-ltz v1, :cond_e

    invoke-virtual {v2, v1}, Landroidx/collection/MutableIntSet;->removeElementAt(I)V

    goto :goto_c

    :cond_c
    add-int/lit8 v23, v23, 0x8

    add-int v12, v12, v23

    and-int v12, v12, v28

    move-object/from16 v1, v27

    move/from16 v15, v28

    move-wide/from16 v7, v30

    goto :goto_8

    :cond_d
    move-object/from16 v27, v1

    move-wide/from16 v30, v7

    move/from16 v24, v14

    :cond_e
    :goto_c
    shr-long v7, v30, v24

    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v24

    move-object/from16 v1, v27

    goto/16 :goto_7

    :cond_f
    move-object/from16 v27, v1

    move v1, v14

    if-ne v9, v1, :cond_11

    goto :goto_d

    :cond_10
    move-object/from16 v27, v1

    :goto_d
    if-eq v5, v4, :cond_11

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v27

    const/16 v14, 0x8

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v6}, Landroidx/collection/MutableIntObjectMap;->clear()V

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v1

    iget-object v3, v1, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v4, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_16

    const/4 v7, 0x0

    :goto_e
    aget-wide v8, v1, v7

    not-long v10, v8

    shl-long v10, v10, v22

    and-long/2addr v10, v8

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_15

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v10, 0x8

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v14, :cond_14

    and-long v11, v8, v18

    cmp-long v11, v11, v16

    if-gez v11, :cond_13

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v10

    aget v12, v3, v11

    aget-object v11, v4, v11

    check-cast v11, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    iget-object v11, v11, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v13, v11, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v13, v13, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v13, v15}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v2, v12}, Landroidx/collection/MutableIntSet;->add(I)Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v11, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v13, v15}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/16 v15, 0x10

    invoke-virtual {v0, v12, v15, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    :cond_12
    new-instance v13, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v15

    invoke-direct {v13, v11, v15}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    invoke-virtual {v6, v12, v13}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_13
    const/16 v11, 0x8

    shr-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_14
    const/16 v11, 0x8

    if-ne v14, v11, :cond_16

    goto :goto_10

    :cond_15
    const/16 v11, 0x8

    :goto_10
    if-eq v7, v5, :cond_16

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_16
    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    return-void
.end method
