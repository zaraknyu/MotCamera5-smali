.class public final Landroidx/activity/contextaware/ContextAwareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile context:Ljava/lang/Object;

.field public listeners:Ljava/io/Serializable;


# virtual methods
.method public getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/io/Serializable;

    check-cast v0, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/io/Serializable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    check-cast v0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    return-object v0
.end method
