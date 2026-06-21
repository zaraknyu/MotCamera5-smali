.class public final Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/State;


# instance fields
.field public animation:Landroidx/compose/animation/core/TargetBasedAnimation;

.field public initialValue:Ljava/lang/Number;

.field public isFinished:Z

.field public playTimeNanosOffset:J

.field public startOnTheNextFrame:Z

.field public targetValue:Ljava/lang/Number;

.field public final synthetic this$0:Landroidx/compose/animation/core/InfiniteTransition;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public final value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/InfiniteRepeatableSpec;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Number;

    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Number;

    iput-object p4, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v3, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Number;

    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Number;

    const/4 v5, 0x0

    move-object v2, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    iput-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
