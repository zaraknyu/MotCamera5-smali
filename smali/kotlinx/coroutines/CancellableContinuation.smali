.class public interface abstract Lkotlinx/coroutines/CancellableContinuation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# virtual methods
.method public abstract cancel(Ljava/lang/Throwable;)Z
.end method

.method public abstract completeResume(Ljava/lang/Object;)V
.end method

.method public abstract resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
.end method

.method public abstract tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/internal/Symbol;
.end method
