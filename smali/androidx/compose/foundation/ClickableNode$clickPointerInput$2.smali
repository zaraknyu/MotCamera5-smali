.class public final Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic J$0:J

.field public synthetic L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/AbstractClickableNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->$r8$classId:I

    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    iget-object p0, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    check-cast p0, Landroidx/compose/foundation/CombinedClickableNode;

    const/4 v2, 0x1

    invoke-direct {p2, p0, p3, v2}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;I)V

    iput-object p1, p2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-wide v0, p2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->J$0:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-wide v0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    iget-object p0, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    check-cast p0, Landroidx/compose/foundation/ClickableNode;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p3, v2}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;I)V

    iput-object p1, p2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-wide v0, p2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->J$0:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-wide v5, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->J$0:J

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    move-object v8, p1

    check-cast v8, Landroidx/compose/foundation/CombinedClickableNode;

    iget-boolean p1, v8, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz p1, :cond_3

    iput v3, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->label:I

    iget-object v7, v8, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v7, :cond_2

    new-instance v3, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-wide v5, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->J$0:J

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    move-object v8, p1

    check-cast v8, Landroidx/compose/foundation/ClickableNode;

    iget-boolean p1, v8, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz p1, :cond_7

    iput v3, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->label:I

    iget-object v7, v8, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v7, :cond_6

    new-instance v3, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;JLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v2

    :goto_3
    if-ne p0, v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, v2

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
