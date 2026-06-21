.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->$r8$classId:I

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-nez p0, :cond_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
