.class public final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/Transition$Segment;


# instance fields
.field public final measuredSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final targetSizeMap:Landroidx/collection/MutableScatterMap;

.field public final transition:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->measuredSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->targetSizeMap:Landroidx/collection/MutableScatterMap;

    return-void
.end method


# virtual methods
.method public final getInitialState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
