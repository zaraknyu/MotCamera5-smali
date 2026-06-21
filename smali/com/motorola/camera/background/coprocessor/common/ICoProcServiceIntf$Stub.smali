.class public abstract Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const-string v0, "com.motorola.camera.background.coprocessor.common.ICoProcServiceIntf"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    move-object p4, p0

    check-cast p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    const-string p0, "getPriority: unknown id="

    monitor-enter p4

    :try_start_0
    sget-object p2, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    iget-object v0, p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->INITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    if-ne v0, v2, :cond_3

    iget-object v0, p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p4

    goto :goto_0

    :cond_3
    :try_start_2
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "getPriority: service not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p4

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p3, v1}, Lcom/motorola/camera/background/common/Priority;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    :goto_1
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p4, p2}, Lcom/motorola/camera/background/common/Priority$CREATOR;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    check-cast v0, Lcom/motorola/camera/background/common/Priority;

    move-object p4, p0

    check-cast p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    const-string/jumbo p0, "setPriority: unknown id="

    monitor-enter p4

    :try_start_4
    const-string/jumbo p2, "priority"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->INITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    if-ne p2, v2, :cond_6

    iget-object p2, p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_5
    :try_start_5
    sget-object p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setPriority: service not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p4

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :goto_3
    :try_start_6
    monitor-exit p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->unregisterClient(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-virtual {p0, p1, p4, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->deinitialize()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    :cond_7
    check-cast v0, Landroid/os/Bundle;

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-virtual {p0, p1, p4, v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->initialize(Ljava/lang/String;[BLandroid/os/Bundle;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, p3, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    :cond_8
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
