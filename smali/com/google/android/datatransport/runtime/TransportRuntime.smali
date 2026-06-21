.class public final Lcom/google/android/datatransport/runtime/TransportRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;


# instance fields
.field public final eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

.field public final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    iget-object p0, p4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/lifecycle/LiveData$1;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p4}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/tasks/zzad;-><init>(IZ)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzad;->build()Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    move-result-object p0

    sput-object p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Landroidx/core/view/MenuHostHelper;
    .locals 5

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/datatransport/Encoding;

    const-string/jumbo v2, "proto"

    invoke-direct {v1, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/datatransport/cct/CCTDestination;

    iget-object p1, p1, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "1$"

    const-string v3, "\\"

    invoke-static {v2, p1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    new-instance v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    const-string v3, "cct"

    sget-object v4, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    invoke-direct {v0, v1, v2, p0}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
