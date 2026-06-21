.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/gms/tasks/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/zzr;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/tasks/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/tasks/zzr;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/LongSparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shader-cache.bin"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/google/android/gms/tasks/zzr;->writeCache(Ljava/io/File;Landroid/util/LongSparseArray;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shader-cache.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzr;->readCache(Ljava/io/File;)Landroid/util/LongSparseArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Landroid/util/LongSparseArray;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v3, 0x0

    :goto_4
    :try_start_6
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v4, Landroid/util/LongSparseArray;

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_3
    monitor-exit v1

    goto :goto_6

    :goto_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :catchall_3
    move-exception p0

    goto :goto_7

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_6
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
