.class public final Lcom/google/android/datatransport/runtime/TransportImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final payloadEncoding:Lcom/google/android/datatransport/Encoding;

.field public final transformer:Lcom/google/android/datatransport/Transformer;

.field public final transportContext:Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

.field public final transportInternal:Lcom/google/android/datatransport/runtime/TransportRuntime;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportRuntime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportRuntime;

    return-void
.end method


# virtual methods
.method public final send(Lcom/google/android/datatransport/AutoValue_Event;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportRuntime;

    iget-object v1, v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    iget-object v2, p1, Lcom/google/android/datatransport/AutoValue_Event;->priority:Lcom/google/android/datatransport/Priority;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object v4, v3, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    new-instance v5, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    invoke-direct {v5, v4, v3, v2}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    new-instance v2, Lcom/motorola/camera/AppFeatures;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/motorola/camera/AppFeatures;-><init>(I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v3}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    const-string v0, "FIREBASE_ML_SDK"

    iput-object v0, v2, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/datatransport/runtime/EncodedPayload;

    iget-object p1, p1, Lcom/google/android/datatransport/AutoValue_Event;->payload:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    invoke-interface {v3, p1}, Lcom/google/android/datatransport/Transformer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    iput-object v0, v2, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/motorola/camera/AppFeatures;->build()Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    move-result-object p0

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object p1, v1, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$7;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, p0, v2}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
