.class public final Landroidx/compose/ui/focus/FocusInvalidationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activeFocusTargetNodeFetcher:Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;

.field public final focusEventNodes:Landroidx/collection/MutableScatterSet;

.field public final focusTargetNodes:Landroidx/collection/MutableScatterSet;

.field public final invalidateOwnerFocusState:Landroidx/room/RoomDatabase$closeBarrier$1;

.field public isInvalidationScheduled:Z

.field public final onRequestApplyChangesListener:Landroidx/room/InvalidationTracker$implementation$1;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/RoomDatabase$closeBarrier$1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Landroidx/room/InvalidationTracker$implementation$1;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Landroidx/room/RoomDatabase$closeBarrier$1;

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->activeFocusTargetNodeFetcher:Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;

    sget p1, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method
