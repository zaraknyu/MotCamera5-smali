.class public final Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/Scheduler;


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final backendRegistry:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

.field public final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final guard:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field public final workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->backendRegistry:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->guard:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    return-void
.end method
