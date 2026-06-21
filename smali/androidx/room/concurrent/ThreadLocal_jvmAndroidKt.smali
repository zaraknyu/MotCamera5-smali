.class public abstract Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final currentThreadId()J
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method
