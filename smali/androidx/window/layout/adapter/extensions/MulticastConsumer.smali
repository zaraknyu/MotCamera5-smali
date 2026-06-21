.class public final Landroidx/window/layout/adapter/extensions/MulticastConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/window/layout/adapter/extensions/MulticastConsumer;",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        "value",
        "",
        "accept",
        "(Landroidx/window/extensions/layout/WindowLayoutInfo;)V",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

.field public final registeredListeners:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->registeredListeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p1

    .line 4
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    .line 5
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->registeredListeners:Ljava/util/LinkedHashSet;

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 7
    invoke-interface {v1, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public final addListener(Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->registeredListeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
