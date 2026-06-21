.class public final Landroidx/compose/runtime/RememberedCoroutineScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Landroidx/compose/runtime/RememberObserver;


# static fields
.field public static final CancelledCoroutineContext:Landroidx/compose/runtime/CancelledCoroutineContext;


# instance fields
.field public volatile _coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final lock:Landroidx/compose/runtime/RememberedCoroutineScope;

.field public final parentContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/CancelledCoroutineContext;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Landroidx/compose/runtime/CancelledCoroutineContext;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->lock:Landroidx/compose/runtime/RememberedCoroutineScope;

    return-void
.end method


# virtual methods
.method public final cancelIfCreated()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->lock:Landroidx/compose/runtime/RememberedCoroutineScope;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Landroidx/compose/runtime/CancelledCoroutineContext;

    iput-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lkotlin/coroutines/CoroutineContext;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Landroidx/compose/runtime/ForgottenCoroutineScopeException;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ForgottenCoroutineScopeException;-><init>(I)V

    invoke-static {v1, p0}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lkotlin/coroutines/CoroutineContext;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Landroidx/compose/runtime/CancelledCoroutineContext;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->lock:Landroidx/compose/runtime/RememberedCoroutineScope;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    new-instance v3, Lkotlinx/coroutines/JobImpl;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Landroidx/compose/runtime/CancelledCoroutineContext;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    new-instance v3, Lkotlinx/coroutines/JobImpl;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    new-instance v2, Landroidx/compose/runtime/ForgottenCoroutineScopeException;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/compose/runtime/ForgottenCoroutineScopeException;-><init>(I)V

    invoke-virtual {v3, v2}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lkotlin/coroutines/CoroutineContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-object v0, v1

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final onAbandoned()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->cancelIfCreated()V

    return-void
.end method

.method public final onForgotten()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->cancelIfCreated()V

    return-void
.end method

.method public final onRemembered()V
    .locals 0

    return-void
.end method
