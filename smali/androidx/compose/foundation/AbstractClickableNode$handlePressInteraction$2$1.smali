.class public final Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic $offset:J

.field public final synthetic $this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

.field public synthetic L$0:Ljava/lang/Object;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/AbstractClickableNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-wide p2, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$offset:J

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    iget-object v4, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v5, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-wide v2, p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$offset:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->label:I

    iget-object v4, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    iget-object v14, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v15, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v15, :cond_4

    if-eq v2, v13, :cond_3

    if-eq v2, v12, :cond_2

    if-eq v2, v11, :cond_1

    if-ne v2, v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    goto/16 :goto_4

    :cond_3
    iget-boolean v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->Z$0:Z

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_3

    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    move-object/from16 v3, p1

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, v3

    new-instance v3, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;

    iget-object v7, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v8, 0x0

    move-object/from16 v16, v5

    iget-wide v5, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$offset:J

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1$delayJob$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v10, v10, v3, v12}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    iput v15, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->label:I

    iget-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    invoke-virtual {v3, v0}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->tryAwaitRelease(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object v10, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    iput-boolean v3, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->Z$0:Z

    iput v13, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->label:I

    invoke-interface {v2, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, v9

    :goto_2
    if-ne v2, v1, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_3
    if-eqz v2, :cond_c

    new-instance v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-wide v5, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->$offset:J

    invoke-direct {v2, v5, v6}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    iput-object v3, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    iput v12, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->label:I

    invoke-virtual {v14, v2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, v3

    :goto_4
    iput-object v10, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    iput v11, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->label:I

    invoke-virtual {v14, v2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    goto :goto_6

    :cond_a
    iget-object v2, v4, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_b

    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    goto :goto_5

    :cond_b
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    :goto_5
    iput-object v10, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;->label:I

    invoke-virtual {v14, v3, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    :goto_7
    iput-object v10, v4, Landroidx/compose/foundation/AbstractClickableNode;->pressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object v9
.end method
