.class public final synthetic Le/t1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Le/n1;

.field public final synthetic f$3:Landroidx/compose/ui/input/pointer/PointerInputScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Le/n1;Landroidx/compose/ui/input/pointer/PointerInputScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/t1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Le/t1$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Le/t1$$ExternalSyntheticLambda0;->f$2:Le/n1;

    iput-object p4, p0, Le/t1$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/input/pointer/PointerInputScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Le/t1$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Le/W;->a(Landroidx/compose/runtime/MutableState;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Le/t1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Le/t1$$ExternalSyntheticLambda0;->f$2:Le/n1;

    const/4 v4, 0x0

    if-lez v0, :cond_0

    new-instance p0, Lc/V;

    const/4 p1, 0x4

    invoke-direct {p0, v3, v4, p1}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v2, v4, v4, p0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    new-instance v0, Le/s1;

    iget-object p0, p0, Le/t1$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/input/pointer/PointerInputScope;

    invoke-direct {v0, p0, p1, v3, v4}, Le/s1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/geometry/Offset;Le/n1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v4, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
