.class public final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final guard:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field public final scheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

.field public final store:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->store:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->guard:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    return-void
.end method
