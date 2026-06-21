.class public final Le/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Le/O0;->$r8$classId:I

    iput-object p1, p0, Le/O0;->a:Ljava/lang/Object;

    iput-object p2, p0, Le/O0;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/O0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/O0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le/O0;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Le/O0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object p0, p0, Le/O0;->c:Ljava/lang/Object;

    check-cast p0, Le/n1;

    new-instance v2, Le/t1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p0, p1}, Le/t1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Le/n1;Landroidx/compose/ui/input/pointer/PointerInputScope;)V

    const/4 p0, 0x0

    const/16 v0, 0xe

    invoke-static {p1, v2, p0, p2, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Le/N0;

    iget-object v1, p0, Le/O0;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/State;

    iget-object v2, p0, Le/O0;->b:Ljava/lang/Object;

    check-cast v2, Le/J0;

    iget-object p0, p0, Le/O0;->c:Ljava/lang/Object;

    check-cast p0, Le/H0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Le/N0;-><init>(Landroidx/compose/runtime/State;Le/J0;Le/H0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {p1, v0, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
