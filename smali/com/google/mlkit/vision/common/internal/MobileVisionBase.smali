.class public abstract Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final zzb:Lcom/tinder/StateMachine;


# instance fields
.field public final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final zzd:Lcom/google/mlkit/vision/barcode/internal/zzl;

.field public final zze:Lcom/google/android/gms/tasks/zzs;

.field public final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tinder/StateMachine;

    const-string v1, "MobileVisionBase"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/tinder/StateMachine;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzl;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzl;

    new-instance v0, Lcom/google/android/gms/tasks/zzs;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/zzs;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    iget-object p0, p1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p0, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzb;

    sget-object v0, Lcom/google/mlkit/vision/common/internal/zzb;->zza:Lcom/google/mlkit/vision/common/internal/zzb;

    invoke-virtual {p1, p2, v0, p0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    sget-object p1, Lcom/google/mlkit/vision/common/internal/zzc;->zza:Lcom/google/mlkit/vision/common/internal/zzc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzs;->cancel()V

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzl;

    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    iget-object v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v0, v2}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->taskQueue:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0, v3, v1}, Landroidx/compose/runtime/Latch;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
