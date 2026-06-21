.class public final Lcom/google/android/gms/tasks/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzu;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/base/zau;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;IZ)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/tasks/zzu;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tasks/zzu;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/transition/TransitionValuesMaps;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
