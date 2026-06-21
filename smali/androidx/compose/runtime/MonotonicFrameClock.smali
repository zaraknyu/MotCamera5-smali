.class public interface abstract Landroidx/compose/runtime/MonotonicFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# virtual methods
.method public getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/NeverEqualPolicy;->$$INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    return-object p0
.end method

.method public abstract withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method
