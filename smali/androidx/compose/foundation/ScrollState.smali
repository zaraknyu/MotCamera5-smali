.class public final Landroidx/compose/foundation/ScrollState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# static fields
.field public static final Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# instance fields
.field public final _maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public accumulator:F

.field public final canScrollBackward$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final canScrollForward$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final scrollableState:Lcom/motorola/camera/fsm/Fsm;

.field public final value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$4:Landroidx/compose/foundation/ImageKt$Image$1$1;

    sget-object v1, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v2, 0x3

    sget-object v3, Landroidx/compose/foundation/ScrollState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/ScrollState$Companion$Saver$1;

    invoke-direct {v1, v2, v3, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Landroidx/compose/foundation/ScrollState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollState;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    new-instance p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {p1}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v0, 0x7fffffff

    invoke-direct {p1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollState;->_maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    new-instance p1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/foundation/ScrollState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    new-instance p1, Landroidx/compose/foundation/ScrollState$canScrollForward$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/ScrollState$canScrollForward$2;-><init>(Landroidx/compose/foundation/ScrollState;I)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/ScrollState;->canScrollForward$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance p1, Landroidx/compose/foundation/ScrollState$canScrollForward$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/ScrollState$canScrollForward$2;-><init>(Landroidx/compose/foundation/ScrollState;I)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/ScrollState;->canScrollBackward$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    return-void
.end method


# virtual methods
.method public final dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/Fsm;->dispatchRawDelta(F)F

    move-result p0

    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->canScrollBackward$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->canScrollForward$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/Fsm;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
