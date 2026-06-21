.class public abstract Lcom/google/android/gms/common/api/GoogleApi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:Landroid/content/Context;

.field public final zac:Ljava/lang/String;

.field public final zad:Lcom/tinder/StateMachine;

.field public final zae:Lcom/google/android/gms/common/api/Api$ApiOptions;

.field public final zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final zah:I

.field public final zaj:Lcom/google/mlkit/common/internal/zze;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zac:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zad:Lcom/tinder/StateMachine;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zae:Lcom/google/android/gms/common/api/Api$ApiOptions;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {v1, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/ApiKey;-><init>(Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zah:I

    iget-object p2, p4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->zaa:Lcom/google/mlkit/common/internal/zze;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaj:Lcom/google/mlkit/common/internal/zze;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final createClientSettingsBuilder()Lcom/google/zxing/Result;
    .locals 4

    new-instance v0, Lcom/google/zxing/Result;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/Result;-><init>(IZ)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/ArraySet;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/collection/ArraySet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    return-object v0
.end method

.method public final zae(ILcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/tasks/zzw;
    .locals 13

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaj:Lcom/google/mlkit/common/internal/zze;

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/zah;->getInstance()Lcom/google/android/gms/common/internal/zah;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    iget-boolean v7, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    if-eqz v7, :cond_2

    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    iget-object v7, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    instance-of v9, v8, Lcom/google/android/gms/common/internal/GmsClient;

    if-eqz v9, :cond_2

    check-cast v8, Lcom/google/android/gms/common/internal/GmsClient;

    iget-object v9, v8, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzk;

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/GmsClient;->isConnecting()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v7, v8, v4}, Lcom/google/android/gms/common/api/internal/zacd;->zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/GmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v8, v7, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    add-int/2addr v8, v6

    iput v8, v7, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    iget-boolean v6, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    goto :goto_1

    :cond_1
    move v6, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v2, Lcom/google/android/gms/common/api/internal/zacd;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    goto :goto_2

    :cond_4
    move-wide v9, v7

    :goto_2
    if-eqz v6, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :cond_5
    move-wide v11, v9

    move-wide v8, v7

    move-wide v6, v11

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/common/api/internal/zacd;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V

    :goto_3
    if-eqz v2, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    iget-object v5, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/common/api/internal/zabk;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Landroid/os/Handler;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v5, v6, v2}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v2, v4, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    :cond_6
    new-instance v2, Lcom/google/android/gms/common/api/internal/zag;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/android/gms/common/api/internal/zag;-><init>(ILcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/mlkit/common/internal/zze;)V

    iget-object p1, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zach;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {p2, v2, p1, p0}, Lcom/google/android/gms/common/api/internal/zach;-><init>(Lcom/google/android/gms/common/api/internal/zac;ILcom/google/android/gms/common/api/GoogleApi;)V

    iget-object p0, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0
.end method
