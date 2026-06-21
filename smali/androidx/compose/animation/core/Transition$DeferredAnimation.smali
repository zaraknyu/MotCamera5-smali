.class public final Landroidx/compose/animation/core/Transition$DeferredAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final data$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final synthetic this$0:Landroidx/compose/animation/core/Transition;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    iget-object v2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    new-instance v3, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v7, v6, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v5}, Landroidx/compose/animation/core/AnimationVector;->reset$animation_core_release()V

    invoke-direct {v3, v2, v4, v5, v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverterImpl;)V

    invoke-direct {v1, p0, v3, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v2, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, v1, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Lkotlin/jvm/internal/Lambda;

    iput-object p1, v1, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->updateAnimationStates(Landroidx/compose/animation/core/Transition$Segment;)V

    return-object v1
.end method
