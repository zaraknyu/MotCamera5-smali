.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/CameraData;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraData;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/CameraData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/CameraData;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".onDeleteComplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onDeleteComplete(Lcom/motorola/camera/CameraData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    throw p0

    :cond_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".onSaveProcessing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    throw p0

    :cond_1
    return-void

    :pswitch_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
