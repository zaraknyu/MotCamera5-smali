.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v0, "access$getMediaVolumes$p(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/storage/MediaVolume;

    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$updateFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$refreshMediaVolumes()V

    return-void

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumesChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".onMediaVolumesChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;->onMediaVolumesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    throw p0

    :cond_1
    return-void

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$refreshMediaVolumes()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
