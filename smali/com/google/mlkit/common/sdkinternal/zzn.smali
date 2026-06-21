.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/barcode/internal/zzl;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/zzb;

.field public final synthetic zzc:Lcom/google/android/gms/tasks/zzs;

.field public final synthetic zzd:Ljava/util/concurrent/Callable;

.field public final synthetic zze:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzl;Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/zzs;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Lcom/google/mlkit/vision/barcode/internal/zzl;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Lcom/google/android/gms/tasks/zzb;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Lcom/google/android/gms/tasks/zzs;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Lcom/google/mlkit/vision/barcode/internal/zzl;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Lcom/google/android/gms/tasks/zzb;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Lcom/google/android/gms/tasks/zzs;

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v4, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzw;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzs;->cancel()V

    return-void

    :cond_0
    :try_start_0
    iget-object v4, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzm;

    invoke-interface {v4}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzc()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    iget-object v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzs;->cancel()V

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/zzw;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzs;->cancel()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-void

    :goto_1
    new-instance v3, Lcom/google/mlkit/common/MlKitException;

    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v3, v4, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzs;->cancel()V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
