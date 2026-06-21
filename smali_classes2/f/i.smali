.class public final Lf/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic b:Lf/C;

.field public final synthetic c:Lf/u;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lf/C;Lf/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lf/i;->b:Lf/C;

    iput-object p3, p0, Lf/i;->c:Lf/u;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lf/e;

    instance-of p2, p1, Lf/c;

    sget-object v0, Lf/d;->a:Lf/d;

    if-eqz p2, :cond_0

    new-instance p2, Lf/g;

    iget-object v1, p0, Lf/i;->c:Lf/u;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p2, v1, p1, v3, v2}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lf/i;->a:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v3, v3, p2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    const-string p2, "event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lf/i;->b:Lf/C;

    iget-object p0, p0, Lf/C;->e:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lf/e;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {p0, p2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
