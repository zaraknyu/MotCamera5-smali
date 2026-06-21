.class public final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $down:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public final synthetic $onPress:Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

.field public final synthetic $pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$onPress:Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$down:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$down:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$onPress:Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;-><init>(Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$down:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v4, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    iput v3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->label:I

    new-instance p1, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$onPress:Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    iget-object v1, v1, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    check-cast v1, Landroidx/compose/foundation/ClickableNode;

    const/4 v3, 0x0

    invoke-direct {p1, v1, p0, v3}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;I)V

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-object p0, p1, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-wide v4, p1, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->J$0:J

    invoke-virtual {p1, v2}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method
