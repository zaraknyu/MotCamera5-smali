.class public final Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic $offset:J

.field public L$0:Landroidx/compose/foundation/interaction/PressInteraction$Press;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/AbstractClickableNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AbstractClickableNode;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    iput-wide p2, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->$offset:J

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;

    iget-wide v2, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->$offset:J

    iget-object v4, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->label:I

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->L$0:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez p1, :cond_3

    const-string/jumbo p1, "visitAncestors called on an unattached node"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-eqz v1, :cond_11

    iget-object v7, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    const/4 v9, 0x0

    if-eqz v7, :cond_f

    :goto_1
    if-eqz p1, :cond_f

    iget v7, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move-object v7, p1

    move-object v10, v9

    :goto_2
    if-eqz v7, :cond_e

    instance-of v11, v7, Landroidx/compose/ui/node/TraversableNode;

    if-eqz v11, :cond_7

    check-cast v7, Landroidx/compose/ui/node/TraversableNode;

    invoke-interface {v7}, Landroidx/compose/ui/node/TraversableNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->TraverseKey:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_5

    check-cast v7, Landroidx/compose/foundation/gestures/ScrollableContainerNode;

    iget-boolean v6, v7, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v4

    :goto_4
    xor-int/lit8 v7, v6, 0x1

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    if-nez v7, :cond_d

    goto :goto_8

    :cond_7
    iget v11, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v11, v8

    if-eqz v11, :cond_d

    instance-of v11, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_d

    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v11, v11, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v12, v5

    :goto_6
    if-eqz v11, :cond_c

    iget v13, v11, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v13, v8

    if-eqz v13, :cond_b

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v4, :cond_8

    move-object v7, v11

    goto :goto_7

    :cond_8
    if-nez v10, :cond_9

    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v13, 0x10

    new-array v13, v13, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v9

    :cond_a
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_b
    :goto_7
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_6

    :cond_c
    if-ne v12, v4, :cond_d

    goto :goto_2

    :cond_d
    invoke-static {v10}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_2

    :cond_e
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_f
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object p1, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz p1, :cond_10

    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/node/TailModifierNode;

    goto/16 :goto_0

    :cond_10
    move-object p1, v9

    goto/16 :goto_0

    :cond_11
    :goto_8
    if-nez v6, :cond_14

    sget p1, Landroidx/compose/foundation/Clickable_androidKt;->$r8$clinit:I

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_13

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_12

    move p1, v4

    goto :goto_a

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_9

    :cond_13
    move p1, v5

    :goto_a
    if-eqz p1, :cond_15

    :cond_14
    move v5, v4

    :cond_15
    if-eqz v5, :cond_16

    sget-wide v5, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    iput v4, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_16

    goto :goto_c

    :cond_16
    :goto_b
    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-wide v4, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->$offset:J

    invoke-direct {p1, v4, v5}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->L$0:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iput v3, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->label:I

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-virtual {v1, p1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_17

    :goto_c
    return-object v0

    :cond_17
    move-object p0, p1

    :goto_d
    iput-object p0, v2, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
