.class public final Lkotlin/DeepRecursiveScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# instance fields
.field public cont:Lkotlin/coroutines/Continuation;

.field public function:Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

.field public result:Ljava/lang/Object;


# virtual methods
.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    return-void
.end method
