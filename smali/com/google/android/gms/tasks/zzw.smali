.class public final Lcom/google/android/gms/tasks/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Lcom/google/android/gms/tasks/zzr;

.field public zzc:Z

.field public volatile zzd:Z

.field public zze:Ljava/lang/Object;

.field public zzf:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/zzr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    return-void
.end method


# virtual methods
.method public final addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance v1, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    return-void
.end method

.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    return-void
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    return-void
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    const-string v2, "Task is not yet complete"

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSuccessful()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zza(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzh()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzh()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zze(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zzh()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v0, :cond_4

    sget v0, Landroidx/media3/common/IllegalSeekPositionException;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz p0, :cond_0

    const-string p0, "cancellation"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown issue"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "result "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "failure"

    :goto_0
    new-instance v1, Landroidx/media3/common/IllegalSeekPositionException;

    const-string v2, "Complete with: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string p0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v1

    :cond_4
    return-void
.end method

.method public final zzi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
