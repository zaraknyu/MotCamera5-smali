.class public abstract Lcom/motorola/camera/panorama/PanoCallable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBegin:J

.field public final mListener:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract call()Lcom/google/android/gms/tasks/zzb;
.end method

.method public callback(Lcom/google/android/gms/tasks/zzb;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/panorama/PanoCallable;->mBegin:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/panorama/PanoListener;

    iget-object p1, p1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    instance-of v3, p0, Lcom/motorola/camera/panorama/PanoSaveCallable;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/panorama/PanoCallable;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in result (dur:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/motorola/camera/panorama/PanoListener;->onError(Ljava/lang/Exception;)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    const/4 p0, 0x0

    invoke-interface {v2, p0}, Lcom/motorola/camera/panorama/PanoListener;->onComplete(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method
