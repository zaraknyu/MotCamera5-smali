.class public final Lcom/google/android/gms/common/api/internal/zacd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:I

.field public final zac:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final zad:J

.field public final zae:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacd;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    iput-wide p6, p0, Lcom/google/android/gms/common/api/internal/zacd;->zae:J

    return-void
.end method

.method public static zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/GmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 4

    iget-object p1, p1, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzk;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzk;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    :goto_0
    if-eqz p1, :cond_6

    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget v3, v1, v2

    if-ne v3, p2, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_6

    aget v3, v1, v2

    if-ne v3, p2, :cond_5

    :cond_4
    :goto_3
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    if-ge p0, p2, :cond_6

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/zah;->getInstance()Lcom/google/android/gms/common/internal/zah;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    if-eqz v2, :cond_b

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zacd;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v2, :cond_b

    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    instance-of v4, v3, Lcom/google/android/gms/common/internal/GmsClient;

    if-eqz v4, :cond_b

    check-cast v3, Lcom/google/android/gms/common/internal/GmsClient;

    iget-wide v4, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v8

    :goto_0
    iget v9, v3, Lcom/google/android/gms/common/internal/GmsClient;->zzy:I

    const/16 v10, 0x64

    if-eqz v1, :cond_5

    iget-boolean v11, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    and-int/2addr v4, v11

    iget v11, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    iget v12, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    iget v1, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    iget-object v13, v3, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzk;

    if-eqz v13, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/GmsClient;->isConnecting()Z

    move-result v13

    if-nez v13, :cond_4

    iget v4, v0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zacd;->zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/GmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    iget v12, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    move v4, v5

    :cond_4
    move v2, v11

    move v3, v12

    goto :goto_2

    :cond_5
    const/16 v11, 0x1388

    move v1, v8

    move v3, v10

    move v2, v11

    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_6

    move v11, v8

    goto :goto_5

    :cond_6
    move-object/from16 v8, p1

    iget-boolean v11, v8, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz v11, :cond_7

    :goto_3
    move v11, v10

    :goto_4
    move v8, v12

    goto :goto_5

    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/tasks/zzw;->getException()Ljava/lang/Exception;

    move-result-object v8

    instance-of v10, v8, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v10, :cond_9

    check-cast v8, Lcom/google/android/gms/common/api/ApiException;

    iget-object v8, v8, Lcom/google/android/gms/common/api/ApiException;->mStatus:Lcom/google/android/gms/common/api/Status;

    iget v10, v8, Lcom/google/android/gms/common/api/Status;->zzb:I

    iget-object v8, v8, Lcom/google/android/gms/common/api/Status;->zze:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    iget v8, v8, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    move v11, v10

    goto :goto_5

    :cond_9
    const/16 v8, 0x65

    move v11, v8

    goto :goto_4

    :goto_5
    if-eqz v4, :cond_a

    iget-wide v6, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    iget-wide v12, v0, Lcom/google/android/gms/common/api/internal/zacd;->zae:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v12, v16, v12

    long-to-int v12, v12

    move-wide v15, v14

    move-wide v13, v6

    :goto_6
    move/from16 v20, v12

    goto :goto_7

    :cond_a
    move-wide v13, v6

    move-wide v15, v13

    goto :goto_6

    :goto_7
    iget v10, v0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    move/from16 v19, v9

    new-instance v9, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v12, v8

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v6, v2

    new-instance v12, Lcom/google/android/gms/common/api/internal/zace;

    move v14, v1

    move/from16 v17, v3

    move-wide v15, v6

    move-object v13, v9

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    :goto_8
    return-void
.end method
