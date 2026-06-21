.class public final Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $block$inlined:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

.field public final synthetic $db$inlined:Landroidx/work/impl/WorkDatabase_Impl;

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroidx/work/impl/WorkDatabase_Impl;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$db$inlined:Landroidx/work/impl/WorkDatabase_Impl;

    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$block$inlined:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;

    iget-object v1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$db$inlined:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$block$inlined:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/work/impl/WorkDatabase_Impl;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
